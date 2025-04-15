import argparse
import re
import requests
from pathlib import Path

import jinja2

SNOWFLAKE_REPO = "https://sfc-repo.snowflakecomputing.com/snowflake-cli/{0}_{1}/index.html"
VERSION_DIR = "https://sfc-repo.snowflakecomputing.com/snowflake-cli/{0}_{1}/{2}/index.html"
VERSION_PATTERN = r">(\d+\.\d+\.\d+)<"
SHA_PATTERN = r"<div style=\"font-family: monospace;\">([a-f0-9]{64})</div>"

INTEL = "x86_64"
ARM = "arm64"
AARCH64 = "aarch64"

MACOS = "darwin"
LINUX = "linux"


def main(template_name: str, file_name):
    env = jinja2.Environment(
        loader=jinja2.loaders.FileSystemLoader(Path(__file__).parent)
    )

    template_path = Path("Casks") / template_name
    file_path = Path("Casks") / file_name

    template = env.get_template(str(template_path))

    latest_version_arm = find_latest_version(get_repo_html("darwin",ARM))
    latest_version_intel = find_latest_version(get_repo_html("darwin",INTEL))

    if latest_version_arm != latest_version_intel:
        raise ValueError("Latest versionARM and Intel do not match. Check with RELENG team, and make sure repo is updated")

    sha_for_intel = get_sha_for_latest_version_file(MACOS, INTEL)
    sha_for_arm = get_sha_for_latest_version_file(MACOS, ARM)

    sha_for_intel_linux = get_sha_for_latest_version_file(LINUX, INTEL)
    sha_for_arm_linux = get_sha_for_latest_version_file(LINUX, AARCH64)

    print(f"SHA for Intel: {sha_for_intel}")

    if not template_path.exists():
        raise ValueError(f"Template file not found: {template}")

    with open(file_path, "w+") as fh:
        fh.write(
            template.render(
                sf_version=latest_version_arm,
                sf_intel_sha=sha_for_intel,
                sf_arm_sha=sha_for_arm,
                sf_linux_intel_sha=sha_for_intel_linux,
                sf_linux_aarch_sha=sha_for_arm_linux
            )
        )
    print(latest_version_arm)

def get_repo_html(platform: str, architecture: str) -> str:
    return requests.get(SNOWFLAKE_REPO.format(platform, architecture)).text

def get_remote_file_directory(platform: str, architecture: str, version: str) -> str:
    print(VERSION_DIR.format(platform, architecture, version))
    return requests.get(VERSION_DIR.format(platform, architecture, version)).text

def find_latest_version(site_text: str) -> str:
    matches = re.findall(VERSION_PATTERN, site_text)
    return max(matches)

def get_sha_for_latest_version_file(platform: str, architecture:str) -> str:
    latest_version = find_latest_version(get_repo_html(platform, architecture))
    print(latest_version)
    return re.findall(SHA_PATTERN, get_remote_file_directory(platform, architecture, latest_version))[0]


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Update Snowflake CLI formula")
    parser.add_argument("template_path", type=str, help="Path to the Jinja2 template file")
    parser.add_argument("file_path", type=str, help="Path to the output file")
    args = parser.parse_args()
    main(args.template_path, args.file_path)
