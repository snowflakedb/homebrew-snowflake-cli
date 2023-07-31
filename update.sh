#!/usr/bin/env bash
set -euo pipefail

# Clean up the environment
pip freeze | grep -v "^-e" | grep -v "@" | xargs pip uninstall -y

# Install requirements
pip install snowflake-cli-labs
pip install homebrew-pypi-poet

# Set current context
MY_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TMP_FILE=$(mktemp)
TMP_OUTPUT=$(mktemp)

# Generate update
poet snowflake-cli-labs | sed 's/^/  /' | sed 's/ *$//' >> "${TMP_FILE}"

# Updated the formula content between start-end markers
FORMULA_TMP_FILE="${MY_DIR}/Formula/snowcli.rb"

LEAD="^# <-- AUTO_START -->$"
TAIL="^# <-- AUTO_END -->$"

BEGIN_GEN=$(grep -n "${LEAD}" <"${FORMULA_TMP_FILE}" | sed 's/\(.*\):.*/\1/g')
END_GEN=$(grep -n "${TAIL}" <"${FORMULA_TMP_FILE}" | sed 's/\(.*\):.*/\1/g')
cat <(head -n "${BEGIN_GEN}" "${FORMULA_TMP_FILE}") \
    "${TMP_FILE}" \
    <(tail -n +"${END_GEN}" "${FORMULA_TMP_FILE}") \
    >"${TMP_OUTPUT}"

mv "${TMP_OUTPUT}" "${FORMULA_TMP_FILE}"

echo "Formula update done."
echo "Now execute the following steps:"
echo '1. Find `resource "snowflake-cli-labs" do` '
echo "2. Copy url and sha"
echo "3. Paste them in line 5 and 6 in Formula/snowcli.rb"

