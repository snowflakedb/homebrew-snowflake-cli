cask "snowflake-cli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.30.0"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "0ca59e16a0768f99beb440c1789d0c3204c2790ff3ddcd2b494bfb1698483f02"
  else
    sha256 "d5bbe4728100903b74de78e97f5f22aeeb179635fee47a9c0bbb2ef40ed900cb"
  end

  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_#{arch}/#{version}/snowflake-cli-#{version}-darwin-#{arch}.pkg"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_arm64/index.html"
    regex(/<p style="display: none">(\d+\.\d+\.\d+)\//i)
  end

  pkg "snowflake-cli-#{version}-darwin-#{arch}.pkg"
  uninstall pkgutil: '\Acom\.snowflake\.snowflake-cli\z',
            delete: "/etc/paths.d/snowflake-cli"
end