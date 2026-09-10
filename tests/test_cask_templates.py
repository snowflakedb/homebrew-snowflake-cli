from pathlib import Path

import jinja2
import pytest

REPOSITORY_ROOT = Path(__file__).parent.parent
UNINSTALL_STANZA = (
    'uninstall pkgutil: "com.snowflake.snowflake-cli",\n'
    '            delete: "/etc/paths.d/snowflake-cli"'
)


@pytest.mark.parametrize("cask_name", ("snowflake-cli", "snowcli"))
def test_rendered_casks_remove_system_path_entry_on_uninstall(cask_name):
    environment = jinja2.Environment(loader=jinja2.FileSystemLoader(REPOSITORY_ROOT))
    template = environment.get_template(f"templates/{cask_name}.tmpl.rb")
    rendered_cask = template.render(
        sf_version="1.2.3",
        sf_intel_sha="a" * 64,
        sf_arm_sha="b" * 64,
    )

    assert UNINSTALL_STANZA in rendered_cask
