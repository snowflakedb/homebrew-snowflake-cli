  class SnowflakeCli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowflake-cli"
    url "https://files.pythonhosted.org/packages/03/69/b508427075311424de383944ecdd484918516e67081bda932779ef5360e5/snowflake_cli_labs-2.0.0.tar.gz"
    sha256 "28ba342cf7b55a4d7aebb97bc1da4cd3ba7b05cd247dee11f52f80a1234ffdda"

    depends_on "python3"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli-labs==2.0.0"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end