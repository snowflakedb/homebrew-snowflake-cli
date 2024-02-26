import re
import subprocess
from pathlib import Path

import jinja2


def main():
    env = jinja2.Environment(
        loader=jinja2.loaders.FileSystemLoader(Path(__file__).parent)
    )
    template = env.get_template("Formula/snowcli.tmpl.rb")
    packages = subprocess.check_output(["poet", "snowflake-cli-labs"], encoding="utf-8")

    sf_pattern = r'\s+resource \"snowflake-cli-labs\" do\s+url \"(.+)\"\s+sha256 \"(\w+)\"\s+end\n'
    match = re.findall(sf_pattern, packages)
    if not match:
        raise ValueError("snowflake dependency not present in deps")
    sf_url, sf_sha = match[0]

    version = subprocess.check_output(["snow", "--version"], encoding="utf-8").split()[-1]

    with open("Formula/snowcli.rb", "w+") as fh:
        fh.write(template.render(
            sf_url=sf_url,
            sf_sha=sf_sha,
            version=version,
        ))


if __name__ == '__main__':
    main()
