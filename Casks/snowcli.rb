cask "snowcli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.31.0"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "1a4fdd1e5834a093bf9ed1aec9af8f5f2f638a630afbd0e3bfe6b29a78908ea7"
  else
    sha256 "1faf51a5d2a3ee9e594c2ee6f0cb89b232b66ab4bf9e241850f973b6cc4e9d15"
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