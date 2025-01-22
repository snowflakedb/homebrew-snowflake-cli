  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflakedb/snowflake-cli"
    url "https://files.pythonhosted.org/packages/2c/0a/a43fcd7beddd6d278d9f5c4e5b4c98ef8ef1ad56bce16deef5498b94a47a/snowflake_cli-3.3.0.tar.gz"
    sha256 "d18f0f0d5015a8b286aca6e9327fe1aad9fcbec6e9c24e8d2ee23b65d896352c"

    depends_on "python@3.11"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3.11", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli==3.3.0"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end