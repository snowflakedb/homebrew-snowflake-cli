  class SnowflakeCli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflakedb/snowflake-cli"
    url "https://files.pythonhosted.org/packages/22/33/fcca760c683ecdcb9b046491fbcd4a55ade65e69878f5e7851774f9ca1cc/snowflake_cli-3.1.0.tar.gz"
    sha256 "88cb6face57aa8edffd4b35a112671ac206dbf1cf6eee4eeaa0f1e85676cc969"

    depends_on "python@3.11"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3.11", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli==3.1.0"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end