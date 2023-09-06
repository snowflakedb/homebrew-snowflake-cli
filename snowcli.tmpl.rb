  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowcli"
    url "{{ sf_url }}"
    sha256 "{{ sf_sha }}"

    depends_on "rust" => :build
    depends_on "python3"

{{ packages }}


    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      #without_pip=false because of https://github.com/Homebrew/brew/pull/15792
      venv = virtualenv_create(libexec, "python3", system_site_packages: false, without_pip: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "pip==22.3.1"
      resources.each do |r|
        if r.name == "snowflake-connector-python" or r.name == "snowflake-connector-python-nightly"
          # workaround for installing `snowflake-connector-python`
          # package w/o build-system deps (e.g. pyarrow)
          # adds the `--no-use-pep517` parameter
          # learned from dbt-homebrew
          r.stage do
            venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/pip", "install",
              "-v", "--no-deps", "--no-binary", ":all:", "--ignore-installed", "--no-use-pep517", Pathname.pwd
          end
        else
          venv.pip_install r
        end
      end
    venv.pip_install_and_link buildpath

    bin.install_symlink "#{libexec}/bin/snow" => "snow"
    end

    test do
      false
    end
  end