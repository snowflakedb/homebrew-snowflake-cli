  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowflake-cli"
    url "https://files.pythonhosted.org/packages/6f/82/57a490b8b63f52bcc5b342e808d39a8b2fedc74501fa54426a9d59e33025/snowflake_cli_labs-2.1.1.tar.gz"
    sha256 "ba0baa784d91242f0c79b914d2dedb51996cb7c4224d6f202fcdfa4a78869160"

    depends_on "python3"

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "ensurepip", "--upgrade"
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "snowflake-cli-labs==2.1.1"
      bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end