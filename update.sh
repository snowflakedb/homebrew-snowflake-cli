#!/usr/bin/env bash
set -euo pipefail

# Clean up the environment
ENV="homebrew-tmp-env"

rm -rf "${ENV}"
python3 -m venv "${ENV}"
source "${ENV}/bin/activate"

# Install requirements
pip install -r requirements.txt

# Update formula
VERSION="$(python3 update.py snowcli.tmpl.rb snowcli.rb)"
python3 update.py snowflake-cli.tmpl.rb snowflake-cli.rb

# Remove venv
rm -rf "${ENV}"

echo
echo "Formula update done."
echo "git checkout -b bump-version-${VERSION}"
echo "git commit -m 'Update formula to v${VERSION}'"
