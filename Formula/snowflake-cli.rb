  class SnowflakeCli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflakedb/snowflake-cli"
    url "https://files.pythonhosted.org/packages/28/38/be596c64fb933eb240683911369af019ec22298dbc5045be0c5005977da8/snowflake_cli-3.4.1.tar.gz"
    sha256 "a982340690acf314a68764c12681cd58426afba9f8bc9fcf95a56a0a4f7ee9b2"

    depends_on "python@3.11"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3.11", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli==3.4.1"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end