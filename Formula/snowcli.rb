  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflakedb/snowflake-cli"
    url "https://files.pythonhosted.org/packages/f1/fe/c9ac6c878e44752c86949fb78c0c8132b36e596f96eb79160af57888e81e/snowflake_cli-3.5.0.tar.gz"
    sha256 "161b748f541b4c724eab36cdba765c28807154a34daf3b2cc707e4c615979b08"

    depends_on "python@3.11"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3.11", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end