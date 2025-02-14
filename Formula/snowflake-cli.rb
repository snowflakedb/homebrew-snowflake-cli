  class SnowflakeCli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowflake-cli"
    url "https://files.pythonhosted.org/packages/c8/27/ac9343944d28e3bf1a6628fe5791a0063a8a2fc341e32ce63759b653e4db/snowflake_cli_labs-3.4.1.tar.gz"
    sha256 "6e20af002c5d7975cd31d531b077c7ac7ccbc1491201fd15e757bef61e4bdf47"

    depends_on "python3"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli-labs==3.4.1"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end