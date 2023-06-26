  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowcli"
    url "https://files.pythonhosted.org/packages/22/62/debbc9bfa1c39f90395e1e7bf2c5fbc1a7a1750f1c709403595b9759022c/snowflake_cli_labs-0.2.8.tar.gz"
    sha256 "671b133b73d0626af2363e42a6b0b94551b6d5b6b240583c8fb0953e4de32466"

    depends_on "rust" => :build
    depends_on "python3"

    resource "asn1crypto" do
      url "https://files.pythonhosted.org/packages/de/cf/d547feed25b5244fcb9392e288ff9fdc3280b10260362fc45d37a798a6ee/asn1crypto-1.5.1.tar.gz"
      sha256 "13ae38502be632115abf8a24cbe5f4da52e3b5231990aff31123c805306ccb9c"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/cb/a4/7de7cd59e429bd0ee6521ba58a75adaec136d32f91a761b28a11d8088d44/certifi-2022.9.24.tar.gz"
      sha256 "0d9c601124e5a6ba9712dbc60d9c53c21e34f5f641fe83002317394311bdce14"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
      sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
    end

    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/a1/34/44964211e5410b051e4b8d2869c470ae8a68ae274953b1c7de6d98bbcf94/charset-normalizer-2.1.1.tar.gz"
      sha256 "5a3d016c7c547f69d6f81fb0db9449ce888b418b5b9952cc5e6e66843e9dd845"
    end

    resource "click" do
      url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
      sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
    end

    resource "commonmark" do
      url "https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0/commonmark-0.9.1.tar.gz"
      sha256 "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
    end

    resource "coverage" do
      url "https://files.pythonhosted.org/packages/8d/4a/3518606d4b110df4f3e77bd52c241ae8a84c6dc74fac7c2a8e809449e541/coverage-7.2.1.tar.gz"
      sha256 "c77f2a9093ccf329dd523a9b2b3c854c20d2a3d968b6def3b820272ca6732242"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/6d/0c/5e67831007ba6cd7e52c4095f053cf45c357739b0a7c46a45ddd50049019/cryptography-38.0.1.tar.gz"
      sha256 "1db3d807a14931fa317f96435695d9ec386be7b84b618cc61cfa5d08b0ae33d7"
    end

    resource "filelock" do
      url "https://files.pythonhosted.org/packages/95/55/b897882bffb8213456363e646bf9e9fa704ffda5a7d140edf935a9e02c7b/filelock-3.8.0.tar.gz"
      sha256 "55447caa666f2198c5b6b13a26d2084d26fa5b115c00d065664b2124680c4edc"
    end

    resource "idna" do
      url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
      sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
    end

    resource "importlib-metadata" do
      url "https://files.pythonhosted.org/packages/90/07/6397ad02d31bddf1841c9ad3ec30a693a3ff208e09c2ef45c9a8a5f85156/importlib_metadata-6.0.0.tar.gz"
      sha256 "e354bedeb60efa6affdcc8ae121b73544a7aa74156d047311948f6d711cd378d"
    end

    resource "jinja2" do
      url "https://files.pythonhosted.org/packages/7a/ff/75c28576a1d900e87eb6335b063fab47a8ef3c8b4d88524c4bf78f670cce/Jinja2-3.1.2.tar.gz"
      sha256 "31351a702a408a9e7595a8fc6150fc3f43bb6bf7e319770cbc0db9df9437e852"
    end

    resource "keyring" do
      url "https://files.pythonhosted.org/packages/55/fe/282f4c205add8e8bb3a1635cbbac59d6def2e0891b145aa553a0e40dd2d0/keyring-23.13.1.tar.gz"
      sha256 "ba2e15a9b35e21908d0aaf4e0a47acc52d6ae33444df0da2b49d41a46ef6d678"
    end

    resource "markupsafe" do
      url "https://files.pythonhosted.org/packages/95/7e/68018b70268fb4a2a605e2be44ab7b4dd7ce7808adae6c5ef32e34f4b55a/MarkupSafe-2.1.2.tar.gz"
      sha256 "abcabc8c2b26036d62d4c746381a6f7cf60aafcc653198ad678306986b09450d"
    end

    resource "oscrypto" do
      url "https://files.pythonhosted.org/packages/06/81/a7654e654a4b30eda06ef9ad8c1b45d1534bfd10b5c045d0c0f6b16fecd2/oscrypto-1.3.0.tar.gz"
      sha256 "6f5fef59cb5b3708321db7cca56aed8ad7e662853351e7991fcf60ec606d47a4"
    end

    resource "pycparser" do
      url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
      sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
    end

    resource "pycryptodomex" do
      url "https://files.pythonhosted.org/packages/52/0d/6cc95a83f6961a1ca041798d222240890af79b381e97eda3b9b538dba16f/pycryptodomex-3.15.0.tar.gz"
      sha256 "7341f1bb2dadb0d1a0047f34c3a58208a92423cdbd3244d998e4b28df5eac0ed"
    end

    resource "Pygments" do
      url "https://files.pythonhosted.org/packages/e0/ef/5905cd3642f2337d44143529c941cc3a02e5af16f0f65f81cbef7af452bb/Pygments-2.13.0.tar.gz"
      sha256 "56a8508ae95f98e2b9bdf93a6be5ae3f7d8af858b43e02c5a2ff083726be40c1"
    end

    resource "PyJWT" do
      url "https://files.pythonhosted.org/packages/75/65/db64904a7f23e12dbf0565b53de01db04d848a497c6c9b87e102f74c9304/PyJWT-2.6.0.tar.gz"
      sha256 "69285c7e31fc44f68a1feb309e948e0df53259d579295e6cfe2b1792329f05fd"
    end

    resource "pyOpenSSL" do
      url "https://files.pythonhosted.org/packages/e7/2f/c6d89edac75482f11e231b644e365d31d5479b7b727734e6a8f3d00decd5/pyOpenSSL-22.1.0.tar.gz"
      sha256 "7a83b7b272dd595222d672f5ce29aa030f1fb837630ef229f62e72e395ce8968"
    end

    resource "pytz" do
      url "https://files.pythonhosted.org/packages/fe/dd/182cc5ed8e64a0d6d6c34fd27391041d542270000825410d294bd6902207/pytz-2022.5.tar.gz"
      sha256 "c4d88f472f54d615e9cd582a5004d1e5f624854a6a27a6211591c251f22a6914"
    end

    resource "PyYAML" do
      url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
      sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
    end

    resource "requests" do
      url "https://files.pythonhosted.org/packages/a5/61/a867851fd5ab77277495a8709ddda0861b28163c4613b011bc00228cc724/requests-2.28.1.tar.gz"
      sha256 "7c5599b102feddaa661c826c56ab4fee28bfd17f5abca1ebbe3e7f19d7c97983"
    end

    resource "requirements-parser" do
      url "https://files.pythonhosted.org/packages/c2/f9/76106e710015f0f8da37bff8db378ced99ae2553cc4b1cffb0aef87dc4ac/requirements-parser-0.5.0.tar.gz"
      sha256 "3336f3a3ae23e06d3f0f88595e4052396e3adf91688787f637e5d2ca1a904069"
    end

    resource "rich" do
      url "https://files.pythonhosted.org/packages/11/23/814edf09ec6470d52022b9e95c23c1bef77f0bc451761e1504ebd09606d3/rich-12.6.0.tar.gz"
      sha256 "ba3a3775974105c221d31141f2c116f4fd65c5ceb0698657a11e9f295ec93fd0"
    end

    resource "six" do
      url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
      sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end

    resource "snowflake-connector-python" do
      url "https://files.pythonhosted.org/packages/55/c3/d096d20e5c95c2fcae7da051eacb4f2a884afeccc81ee00bb526112fd4bf/snowflake-connector-python-2.8.1.tar.gz"
      sha256 "cdc1eec036606ab64f474e39b00024d60d72be65a047aec065b7d3511970cd5e"
    end

    resource "toml" do
      url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
      sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
    end

    resource "typer" do
      url "https://files.pythonhosted.org/packages/cf/f9/27c5cd9ab067e3ece4cecb920c33f38cc986f839b12de19650fd49dc3c63/typer-0.6.1.tar.gz"
      sha256 "2d5720a5e63f73eaf31edaa15f6ab87f35f0690f8ca233017d7d23d743a91d73"
    end

    resource "types-setuptools" do
      url "https://files.pythonhosted.org/packages/40/55/1e0c9c664303e5d301f113de11bfa639bf8d121451c7688a07c3711dbc16/types-setuptools-65.4.0.0.tar.gz"
      sha256 "d9021d6a70690b34e7bd2947e7ab10167c646fbf062508cb56581be2e2a1615e"
    end

    resource "typing-extensions" do
      url "https://files.pythonhosted.org/packages/e3/a7/8f4e456ef0adac43f452efc2d0e4b242ab831297f1bac60ac815d37eb9cf/typing_extensions-4.4.0.tar.gz"
      sha256 "1511434bb92bf8dd198c12b1cc812e800d4181cfcb867674e0f8279cc93087aa"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/b2/56/d87d6d3c4121c0bcec116919350ca05dc3afd2eeb7dc88d07e8083f8ea94/urllib3-1.26.12.tar.gz"
      sha256 "3fa96cf423e6987997fc326ae8df396db2a8b7c667747d47ddd8ecba91f4a74e"
    end

    resource "xmltodict" do
      url "https://files.pythonhosted.org/packages/39/0d/40df5be1e684bbaecdb9d1e0e40d5d482465de6b00cbb92b84ee5d243c7f/xmltodict-0.13.0.tar.gz"
      sha256 "341595a488e3e01a85a9d8911d8912fd922ede5fecc4dce437eb4b6c8d037e56"
    end
  

    resource "zipp" do
      url "https://files.pythonhosted.org/packages/8e/b3/8b16a007184714f71157b1a71bbe632c5d66dd43bc8152b3c799b13881e1/zipp-3.11.0.tar.gz"
      sha256 "a7a22e05929290a67401440b39690ae6563279bced5f314609d9d03798f56766"
    end

    def install
      ENV["CARGO_NET_GIT_FETCH_WITH_CLI"] = "true"
      venv = virtualenv_create(libexec, "python3", system_site_packages: false)
      venv.instance_variable_get(:@formula).system venv.instance_variable_get(:@venv_root)/"bin/python",
        "-m", "pip", "install", "pip==22.3.1"
      resources.each do |r|
        if r.name == "snowflake-connector-python"
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