cask "snowcli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.32.1"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "dc84c7f9f090400e65c3d890c3ca9ef5bac4278062fad241b9c32743e5d74207"
  else
    sha256 "280ee2c7c13a42cfc05a36c0a1cc7f594ef31635a66912ba380bcfdd5431b569"
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