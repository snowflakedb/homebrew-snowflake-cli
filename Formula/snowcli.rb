  class Snowcli < Formula
    include Language::Python::Virtualenv
    desc "A CLI for Snowflake development"
    homepage "https://github.com/snowflake-labs/snowcli"
    url "https://files.pythonhosted.org/packages/39/87/403367c96d1ae6a56f277ebb6cec6b31e7c156e7b5383c1401ffec45c49a/snowflake_cli_labs-1.2.0.tar.gz"
    sha256 "6000acf107449991b0dafdf5923838edf642110aec906955b02936c7e8d9f50e"

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
      url "https://files.pythonhosted.org/packages/68/ce/95b0bae7968c65473e1298efb042e10cafc7bafc14d9e4f154008241c91d/cffi-1.16.0.tar.gz"
      sha256 "bcb3ef43e58665bbda2fb198698fcae6776483e0c4a631aa5647806c25e02cc0"
    end

    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/6d/b3/aa417b4e3ace24067f243e45cceaffc12dba6b8bd50c229b43b3b163768b/charset-normalizer-3.3.1.tar.gz"
      sha256 "d9137a876020661972ca6eec0766d81aef8a5627df628b664b234b73396e727e"
    end

    resource "click" do
      url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
      sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
    end

    resource "coverage" do
      url "https://files.pythonhosted.org/packages/29/73/f584ffd3acea29a2f2330bb8fd0c14af3f0efd03f73c696a6f229199198e/coverage-7.3.1.tar.gz"
      sha256 "6cb7fe1581deb67b782c153136541e20901aa312ceedaf1467dcb35255787952"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/16/a7/38fdcdd634515f589c8c723608c0f0b38d66c6c2320b3095967486f3045a/cryptography-41.0.5.tar.gz"
      sha256 "392cb88b597247177172e02da6b7a63deeff1937fa6fec3bbf902ebd75d97ec7"
    end

    resource "filelock" do
      url "https://files.pythonhosted.org/packages/6c/93/59c180bd2d637ad8ff58bacd3187abdd1af3a76d26d34a2544cec93dbfcc/filelock-3.13.0.tar.gz"
      sha256 "63c6052c82a1a24c873a549fbd39a26982e8f35a3016da231ead11a5be9dad44"
    end

    resource "gitdb" do
      url "https://files.pythonhosted.org/packages/19/0d/bbb5b5ee188dec84647a4664f3e11b06ade2bde568dbd489d9d64adef8ed/gitdb-4.0.11.tar.gz"
      sha256 "bf5421126136d6d0af55bc1e7c1af1c397a34f5b7bd79e776cd3e89785c2b04b"
    end

    resource "GitPython" do
      url "https://files.pythonhosted.org/packages/c6/33/5e633d3a8b3dbec3696415960ed30f6718ed04ef423ce0fbc6512a92fa9a/GitPython-3.1.37.tar.gz"
      sha256 "f9b9ddc0761c125d5780eab2d64be4873fc6817c2899cbcb34b02344bdc7bc54"
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
      url "https://files.pythonhosted.org/packages/fb/2b/9b9c33ffed44ee921d0967086d653047286054117d584f1b1a7c22ceaf7b/packaging-23.2.tar.gz"
      sha256 "048fb0e9405036518eaaf48a55953c750c11e1a1b68e0dd1a9d62ed0c092cfc5"
    end

    resource "platformdirs" do
      url "https://files.pythonhosted.org/packages/92/38/3dd18a282991c004851ea1f0953105a186cfc691eee2792778ac2ca060f8/platformdirs-3.8.1.tar.gz"
      sha256 "f87ca4fcff7d2b0f81c6a748a77973d7af0f4d526f98f308477c3c436c74d528"
    end

    resource "pluggy" do
      url "https://files.pythonhosted.org/packages/36/51/04defc761583568cae5fd533abda3d40164cbdcf22dee5b7126ffef68a40/pluggy-1.3.0.tar.gz"
      sha256 "cf61ae8f126ac6f7c451172cf30e3e43d3ca77615509771b3a984a0730651e12"
    end

    resource "pycparser" do
      url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
      sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
    end

    resource "pycryptodomex" do
      url "https://files.pythonhosted.org/packages/14/c9/09d5df04c9f29ae1b49d0e34c9934646b53bb2131a55e8ed2a0d447c7c53/pycryptodomex-3.19.0.tar.gz"
      sha256 "af83a554b3f077564229865c45af0791be008ac6469ef0098152139e6bd4b5b6"
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
      url "https://files.pythonhosted.org/packages/bf/a0/e667c3c43b65a188cc3041fa00c50655315b93be45182b2c94d185a2610e/pyOpenSSL-23.3.0.tar.gz"
      sha256 "6b2cba5cc46e822750ec3e5a81ee12819850b11303630d575e98108a079c2b12"
    end

    resource "python-dateutil" do
      url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
      sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
    end

    resource "pytz" do
      url "https://files.pythonhosted.org/packages/69/4f/7bf883f12ad496ecc9514cd9e267b29a68b3e9629661a2bbc24f80eff168/pytz-2023.3.post1.tar.gz"
      sha256 "7b4fddbeb94a1eba4b557da24f19fdf9db575192544270a9101d8509f9f43d7b"
    end

    resource "PyYAML" do
      url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
      sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
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
      url "https://files.pythonhosted.org/packages/b1/0e/e5aa3ab6857a16dadac7a970b2e1af21ddf23f03c99248db2c01082090a3/rich-13.6.0.tar.gz"
      sha256 "5c14d22737e6d5084ef4771b62d5d4363165b403455a30a1c8ca39dc7b644bef"
    end

    resource "six" do
      url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
      sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end

    resource "smmap" do
      url "https://files.pythonhosted.org/packages/88/04/b5bf6d21dc4041000ccba7eb17dd3055feb237e7ffc2c20d3fae3af62baa/smmap-5.0.1.tar.gz"
      sha256 "dceeb6c0028fdb6734471eb07c0cd2aae706ccaecab45965ee83f11c8d3b1f62"
    end

    resource "snowflake-cli-labs" do
      url "https://files.pythonhosted.org/packages/39/87/403367c96d1ae6a56f277ebb6cec6b31e7c156e7b5383c1401ffec45c49a/snowflake_cli_labs-1.2.0.tar.gz"
      sha256 "6000acf107449991b0dafdf5923838edf642110aec906955b02936c7e8d9f50e"
    end

    resource "snowflake-connector-python" do
      url "https://files.pythonhosted.org/packages/fb/14/7818fdca8f5857521b005720662de43ba4a4d85f0633f8df5a14729dff6e/snowflake-connector-python-3.2.0.tar.gz"
      sha256 "676a0dca16de7c120900aa1a5fce6440833b0a60f76682b7ccf1667967282ca3"
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
      url "https://files.pythonhosted.org/packages/1f/32/ad55729b96c07993bbf83a0a734a3ee8402ea42268939aeae30c4f3600d0/types-setuptools-68.2.0.0.tar.gz"
      sha256 "a4216f1e2ef29d089877b3af3ab2acf489eb869ccaf905125c69d2dc3932fd85"
    end

    resource "typing-extensions" do
      url "https://files.pythonhosted.org/packages/1f/7a/8b94bb016069caa12fc9f587b28080ac33b4fbb8ca369b98bc0a4828543e/typing_extensions-4.8.0.tar.gz"
      sha256 "df8e4339e9cb77357558cbdbceca33c303714cf861d1eef15e1070055ae8b7ef"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/0c/39/64487bf07df2ed854cc06078c27c0d0abc59bd27b32232876e403c333a08/urllib3-1.26.18.tar.gz"
      sha256 "f8ecc1bba5667413457c529ab955bf8c67b45db799d159066261719e328580a0"
    end

    resource "zipp" do
      url "https://files.pythonhosted.org/packages/58/03/dd5ccf4e06dec9537ecba8fcc67bbd4ea48a2791773e469e73f94c3ba9a6/zipp-3.17.0.tar.gz"
      sha256 "84e64a1c28cf7e91ed2078bb8cc8c259cb19b76942096c8d7b84947690cabaf0"
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