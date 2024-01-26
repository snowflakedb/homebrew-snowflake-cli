  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowcli"
    url "https://files.pythonhosted.org/packages/45/8a/1d7eb85f6aca8d5a3e6a420ad77cf5deec0442d26b19e10c826979ccafe9/snowflake_cli_labs-1.2.4.tar.gz"
    sha256 "063cfb5174fdb173ae1d8f0066347194546268fa6d9db63edac63a61d983ec9f"

    depends_on "python3"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      #without_pip=false because of https://github.com/Homebrew/brew/pull/15792
      venv = virtualenv_create(libexec, "python3", system_site_packages: false, without_pip: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "pip==22.3.1"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/pip",
        "install", "snowflake-cli-labs==1.2.4"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end