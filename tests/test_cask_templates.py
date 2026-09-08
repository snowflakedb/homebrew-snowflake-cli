import unittest
from pathlib import Path

import jinja2


class CaskTemplateTest(unittest.TestCase):
    def test_rendered_casks_remove_system_path_entry_on_uninstall(self):
        repository_root = Path(__file__).parent.parent
        environment = jinja2.Environment(
            loader=jinja2.FileSystemLoader(repository_root)
        )

        for cask_name in ("snowflake-cli", "snowcli"):
            with self.subTest(cask_name=cask_name):
                template = environment.get_template(
                    f"templates/{cask_name}.tmpl.rb"
                )
                rendered_cask = template.render(
                    sf_version="1.2.3",
                    sf_intel_sha="a" * 64,
                    sf_arm_sha="b" * 64,
                )

                self.assertIn(
                    'uninstall pkgutil: "com.snowflake.snowflake-cli",\n'
                    '            delete: "/etc/paths.d/snowflake-cli"',
                    rendered_cask,
                )


if __name__ == "__main__":
    unittest.main()
