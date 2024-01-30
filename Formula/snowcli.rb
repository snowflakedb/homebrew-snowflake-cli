  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowcli"
    url "https://files.pythonhosted.org/packages/76/dc/89bee53a044b5674fdce4f484683de4cb70443533ab145fa6aa2ffc8a7cb/snowflake_cli_labs-1.2.5.tar.gz"
    sha256 "371d872e0a7e939fd5c6a56a36a8464fb08c3b9d27ed638352832c57331e8270"

    depends_on "python3"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      #without_pip=false because of https://github.com/Homebrew/brew/pull/15792
      venv = virtualenv_create(libexec, "python3", system_site_packages: false, without_pip: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "pip==22.3.1"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/pip",
        "install", "snowflake-cli-labs==1.2.5"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end