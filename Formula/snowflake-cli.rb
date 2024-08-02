  class SnowflakeCli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowflake-cli"
    url "https://files.pythonhosted.org/packages/e7/bb/31bda15a7c5ace34ff8d074aad817d7ecdc8ec21e26982f6092081c8d391/snowflake_cli_labs-2.7.0.tar.gz"
    sha256 "11e431ddd06f304c6a3ca1f829f16e889fd4a9c0506a3f67aa0bff6b917ff84b"

    depends_on "python3"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli-labs==2.7.0"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end