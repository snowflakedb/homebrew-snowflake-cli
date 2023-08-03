import re
import subprocess
from pathlib import Path
from textwrap import indent

import jinja2


def main():
    env = jinja2.Environment(
        loader=jinja2.loaders.FileSystemLoader(Path(__file__).parent)
    )
    template = env.get_template("snowcli.tmpl.rb")
    packages = subprocess.check_output(["poet", "snowflake-cli-labs"], encoding="utf-8")

    sf_pattern = r'\s+resource \"snowflake-cli-labs\" do\s+url \"(.+)\"\s+sha256 \"(\w+)\"\s+end\n'
    match = re.findall(sf_pattern, packages)
    if not match:
        raise ValueError("snowflake dependency not present in deps")
    sf_url, sf_sha = match[0]



    with open("Formula/snowcli.rb", "w+") as fh:
        fh.write(template.render(
            sf_url=sf_url,
            sf_sha=sf_sha,
            packages=indent(packages, "  ")
        ))


if __name__ == '__main__':
    main()
