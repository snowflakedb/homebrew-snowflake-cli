  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowcli"
    url "https://files.pythonhosted.org/packages/f0/3a/e7273fc564439d3b34b95c779ca62793867ec7670e25f88bc2647dc10d61/snowflake_cli_labs-1.1.0.tar.gz"
    sha256 "b47b8fcc2b077798fcbea8e47bda07d0255e0d3ec43830d219b0a59a9a7bca0f"

    depends_on "rust" => :build
    depends_on "python3"

    resource "asn1crypto" do
      url "https://files.pythonhosted.org/packages/de/cf/d547feed25b5244fcb9392e288ff9fdc3280b10260362fc45d37a798a6ee/asn1crypto-1.5.1.tar.gz"
      sha256 "13ae38502be632115abf8a24cbe5f4da52e3b5231990aff31123c805306ccb9c"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/98/98/c2ff18671db109c9f10ed27f5ef610ae05b73bd876664139cf95bd1429aa/certifi-2023.7.22.tar.gz"
      sha256 "539cc1d13202e33ca466e88b2807e29f4c13049d6d87031a3c110744495cb082"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
      sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
    end

    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/2a/53/cf0a48de1bdcf6ff6e1c9a023f5f523dfe303e4024f216feac64b6eb7f67/charset-normalizer-3.2.0.tar.gz"
      sha256 "3bb3d25a8e6c0aedd251753a79ae98a093c7e7b471faa3aa9a93a81431987ace"
    end

    resource "click" do
      url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
      sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
    end

    resource "coverage" do
      url "https://files.pythonhosted.org/packages/4e/87/c0163d39ac70cab62ebcaee164c988215cd312919a78940c2251a2fcfabb/coverage-7.3.0.tar.gz"
      sha256 "49dbb19cdcafc130f597d9e04a29d0a032ceedf729e41b181f51cd170e6ee865"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/8e/5d/2bf54672898375d081cb24b30baeb7793568ae5d958ef781349e9635d1c8/cryptography-41.0.3.tar.gz"
      sha256 "6d192741113ef5e30d89dcb5b956ef4e1578f304708701b8b73d38e3e1461f34"
    end

    resource "filelock" do
      url "https://files.pythonhosted.org/packages/5a/47/f1f3f5b6da710d5a7178a7f8484d9b86b75ee596fb4fefefb50e8dd2205a/filelock-3.12.3.tar.gz"
      sha256 "0ecc1dd2ec4672a10c8550a8182f1bd0c0a5088470ecd5a125e45f49472fac3d"
    end

    resource "idna" do
      url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
      sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
    end

    resource "importlib-metadata" do
      url "https://files.pythonhosted.org/packages/33/44/ae06b446b8d8263d712a211e959212083a5eda2bf36d57ca7415e03f6f36/importlib_metadata-6.8.0.tar.gz"
      sha256 "dbace7892d8c0c4ac1ad096662232f831d4e64f4c4545bd53016a3e9d4654743"
    end

    resource "jaraco.classes" do
      url "https://files.pythonhosted.org/packages/8b/de/d0a466824ce8b53c474bb29344e6d6113023eb2c3793d1c58c0908588bfa/jaraco.classes-3.3.0.tar.gz"
      sha256 "c063dd08e89217cee02c8d5e5ec560f2c8ce6cdc2fcdc2e68f7b2e5547ed3621"
    end

    resource "Jinja2" do
      url "https://files.pythonhosted.org/packages/7a/ff/75c28576a1d900e87eb6335b063fab47a8ef3c8b4d88524c4bf78f670cce/Jinja2-3.1.2.tar.gz"
      sha256 "31351a702a408a9e7595a8fc6150fc3f43bb6bf7e319770cbc0db9df9437e852"
    end

    resource "keyring" do
      url "https://files.pythonhosted.org/packages/14/c5/7a2a66489c66ee29562300ddc5be63636f70b4025a74df71466e62d929b1/keyring-24.2.0.tar.gz"
      sha256 "ca0746a19ec421219f4d713f848fa297a661a8a8c1504867e55bfb5e09091509"
    end

    resource "markdown-it-py" do
      url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
      sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
    end

    resource "MarkupSafe" do
      url "https://files.pythonhosted.org/packages/6d/7c/59a3248f411813f8ccba92a55feaac4bf360d29e2ff05ee7d8e1ef2d7dbf/MarkupSafe-2.1.3.tar.gz"
      sha256 "af598ed32d6ae86f1b747b82783958b1a4ab8f617b06fe68795c7f026abbdcad"
    end

    resource "mdurl" do
      url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
      sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
    end

    resource "more-itertools" do
      url "https://files.pythonhosted.org/packages/2d/73/3557e45746fcaded71125c0a1c0f87616e8258c78391f0c365bf97bbfc99/more-itertools-10.1.0.tar.gz"
      sha256 "626c369fa0eb37bac0291bce8259b332fd59ac792fa5497b59837309cd5b114a"
    end

    resource "oscrypto" do
      url "https://files.pythonhosted.org/packages/06/81/a7654e654a4b30eda06ef9ad8c1b45d1534bfd10b5c045d0c0f6b16fecd2/oscrypto-1.3.0.tar.gz"
      sha256 "6f5fef59cb5b3708321db7cca56aed8ad7e662853351e7991fcf60ec606d47a4"
    end

    resource "packaging" do
      url "https://files.pythonhosted.org/packages/b9/6c/7c6658d258d7971c5eb0d9b69fa9265879ec9a9158031206d47800ae2213/packaging-23.1.tar.gz"
      sha256 "a392980d2b6cffa644431898be54b0045151319d1e7ec34f0cfed48767dd334f"
    end

    resource "platformdirs" do
      url "https://files.pythonhosted.org/packages/92/38/3dd18a282991c004851ea1f0953105a186cfc691eee2792778ac2ca060f8/platformdirs-3.8.1.tar.gz"
      sha256 "f87ca4fcff7d2b0f81c6a748a77973d7af0f4d526f98f308477c3c436c74d528"
    end

    resource "pycparser" do
      url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
      sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
    end

    resource "pycryptodomex" do
      url "https://files.pythonhosted.org/packages/40/92/efd675dba957315d705f792b28d900bddc36f39252f6713961b4221ee9af/pycryptodomex-3.18.0.tar.gz"
      sha256 "3e3ecb5fe979e7c1bb0027e518340acf7ee60415d79295e5251d13c68dde576e"
    end

    resource "Pygments" do
      url "https://files.pythonhosted.org/packages/d6/f7/4d461ddf9c2bcd6a4d7b2b139267ca32a69439387cc1f02a924ff8883825/Pygments-2.16.1.tar.gz"
      sha256 "1daff0494820c69bc8941e407aa20f577374ee88364ee10a98fdbe0aece96e29"
    end

    resource "PyJWT" do
      url "https://files.pythonhosted.org/packages/30/72/8259b2bccfe4673330cea843ab23f86858a419d8f1493f66d413a76c7e3b/PyJWT-2.8.0.tar.gz"
      sha256 "57e28d156e3d5c10088e0c68abb90bfac3df82b40a71bd0daa20c65ccd5c23de"
    end

    resource "pyOpenSSL" do
      url "https://files.pythonhosted.org/packages/be/df/75a6525d8988a89aed2393347e9db27a56cb38a3e864314fac223e905aef/pyOpenSSL-23.2.0.tar.gz"
      sha256 "276f931f55a452e7dea69c7173e984eb2a4407ce413c918aa34b55f82f9b8bac"
    end

    resource "python-dateutil" do
      url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
      sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
    end

    resource "pytz" do
      url "https://files.pythonhosted.org/packages/69/4f/7bf883f12ad496ecc9514cd9e267b29a68b3e9629661a2bbc24f80eff168/pytz-2023.3.post1.tar.gz"
      sha256 "7b4fddbeb94a1eba4b557da24f19fdf9db575192544270a9101d8509f9f43d7b"
    end

    resource "requests" do
      url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
      sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end

    resource "requirements-parser" do
      url "https://files.pythonhosted.org/packages/c2/f9/76106e710015f0f8da37bff8db378ced99ae2553cc4b1cffb0aef87dc4ac/requirements-parser-0.5.0.tar.gz"
      sha256 "3336f3a3ae23e06d3f0f88595e4052396e3adf91688787f637e5d2ca1a904069"
    end

    resource "rich" do
      url "https://files.pythonhosted.org/packages/ad/1a/94fe086875350afbd61795c3805e38ef085af466a695db605bcdd34b4c9c/rich-13.5.2.tar.gz"
      sha256 "fb9d6c0a0f643c99eed3875b5377a184132ba9be4d61516a55273d3554d75a39"
    end

    resource "six" do
      url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
      sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end

    resource "snowflake-cli-labs" do
      url "https://files.pythonhosted.org/packages/f0/3a/e7273fc564439d3b34b95c779ca62793867ec7670e25f88bc2647dc10d61/snowflake_cli_labs-1.1.0.tar.gz"
      sha256 "b47b8fcc2b077798fcbea8e47bda07d0255e0d3ec43830d219b0a59a9a7bca0f"
    end

    resource "snowflake-connector-python" do
      url "https://files.pythonhosted.org/packages/b9/5b/abf42e3eaf326b049f7d9b878cbce081185a164d41d377214b8a93095497/snowflake-connector-python-3.1.0.tar.gz"
      sha256 "fac51fc5cef6f9d5798aa460f4e6de3e53e1a0fc7b913d2bd98b5ae806bcc83b"
    end

    resource "sortedcontainers" do
      url "https://files.pythonhosted.org/packages/e8/c4/ba2f8066cceb6f23394729afe52f3bf7adec04bf9ed2c820b39e19299111/sortedcontainers-2.4.0.tar.gz"
      sha256 "25caa5a06cc30b6b83d11423433f65d1f9d76c4c6a0c90e3379eaa43b9bfdb88"
    end

    resource "strictyaml" do
      url "https://files.pythonhosted.org/packages/b3/08/efd28d49162ce89c2ad61a88bd80e11fb77bc9f6c145402589112d38f8af/strictyaml-1.7.3.tar.gz"
      sha256 "22f854a5fcab42b5ddba8030a0e4be51ca89af0267961c8d6cfa86395586c407"
    end

    resource "tomlkit" do
      url "https://files.pythonhosted.org/packages/0d/07/d34a911a98e64b07f862da4b10028de0c1ac2222ab848eaf5dd1877c4b1b/tomlkit-0.12.1.tar.gz"
      sha256 "38e1ff8edb991273ec9f6181244a6a391ac30e9f5098e7535640ea6be97a7c86"
    end

    resource "typer" do
      url "https://files.pythonhosted.org/packages/5b/49/39f10d0f75886439ab3dac889f14f8ad511982a754e382c9b6ca895b29e9/typer-0.9.0.tar.gz"
      sha256 "50922fd79aea2f4751a8e0408ff10d2662bd0c8bbfa84755a699f3bada2978b2"
    end

    resource "types-setuptools" do
      url "https://files.pythonhosted.org/packages/a7/b3/19bc83fe656d60591b428a12fbff3b72f8a619fc0f410f6bfb110b167d69/types-setuptools-68.1.0.1.tar.gz"
      sha256 "271ed8da44885cd9a701c86e48cc6d3cc988052260e72b3ce26c26b3028f86ed"
    end

    resource "typing-extensions" do
      url "https://files.pythonhosted.org/packages/3c/8b/0111dd7d6c1478bf83baa1cab85c686426c7a6274119aceb2bd9d35395ad/typing_extensions-4.7.1.tar.gz"
      sha256 "b75ddc264f0ba5615db7ba217daeb99701ad295353c45f9e95963337ceeeffb2"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/e2/7d/539e6f0cf9f0b95b71dd701a56dae89f768cd39fd8ce0096af3546aeb5a3/urllib3-1.26.16.tar.gz"
      sha256 "8f135f6502756bde6b2a9b28989df5fbe87c9970cecaa69041edcce7f0589b14"
    end

    resource "zipp" do
      url "https://files.pythonhosted.org/packages/e2/45/f3b987ad5bf9e08095c1ebe6352238be36f25dd106fde424a160061dce6d/zipp-3.16.2.tar.gz"
      sha256 "ebc15946aa78bd63458992fc81ec3b6f7b1e92d51c35e6de1c3804e73b799147"
    end



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