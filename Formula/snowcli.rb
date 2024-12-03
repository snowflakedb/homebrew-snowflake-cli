  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflakedb/snowflake-cli"
    url "https://files.pythonhosted.org/packages/36/c8/ba55a3400a4da5fc8bb940fff906200cd1ccf007d6cb1a3273475684e917/snowflake_cli-3.2.1.tar.gz"
    sha256 "1909497daf5d68c26869f59983f5c1bbeffa4d0ebae14179439129e0e9fae537"

    depends_on "python@3.11"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3.11", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli==3.2.1"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end