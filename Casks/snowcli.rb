cask "snowcli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.34.0"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "a77d985cbb6c465eaf01ba85a6bbe9a446b6c3be0e18c35a9cfc9246366e3e7c"
  else
    sha256 "ae205bebda1ff297afd7b6e3d857e5788979cfcf229e22efe17b96c18434ec45"
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