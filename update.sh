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
MAX_LEN=$(awk '{ print length($0); }' "${TMP_FILE}" | sort -n | tail -1 )
README_FILE="${MY_DIR}/Formula/snowcli.rb"

LEAD="^# <-- AUTO_START -->$"
TAIL="^# <-- AUTO_END -->$"

BEGIN_GEN=$(grep -n "${LEAD}" <"${README_FILE}" | sed 's/\(.*\):.*/\1/g')
END_GEN=$(grep -n "${TAIL}" <"${README_FILE}" | sed 's/\(.*\):.*/\1/g')
cat <(head -n "${BEGIN_GEN}" "${README_FILE}") \
    "${TMP_FILE}" \
    <(tail -n +"${END_GEN}" "${README_FILE}") \
    >"${TMP_OUTPUT}"

mv "${TMP_OUTPUT}" "${README_FILE}"

echo "Formula update done. Manually update L5 and L6"
