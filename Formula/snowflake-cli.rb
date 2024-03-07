  class SnowflakeCli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowflake-cli"
    url "https://files.pythonhosted.org/packages/a1/f2/69fb8e1c60f076fc9389d59d4a584456afce1d6f2a4f3c2a2c9acfb195aa/snowflake_cli_labs-2.1.0.tar.gz"
    sha256 "0bf27e1362ed1008bf7e8a5c99cfb74b489e482ec8e0e0173a7d5b1c13ddf6f9"

    depends_on "python3"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli-labs==2.1.0"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end