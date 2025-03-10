#!/usr/bin/env bash
set -euo pipefail

# Clean up the environment
ENV="homebrew-tmp-env"

rm -rf "${ENV}"
python3 -m venv "${ENV}"
source "${ENV}/bin/activate"

# Install requirements
pip install snowflake-cli
pip install homebrew-pypi-poet

# Update formula
python3 update.py
python3 update-snowcli.py

VERSION="$(pip freeze | grep snowflake-cli | cut -d = -f 3)"

# Remove venv
rm -rf "${ENV}"

echo
echo "Formula update done."
echo "git checkout -b bump-version-${VERSION}"
echo "git commit -m 'Update formula to v${VERSION}'"
