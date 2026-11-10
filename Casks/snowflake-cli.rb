cask "snowflake-cli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.33.0"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "bccc84f07139ce10ba67536b150fdde5570cbffc0138cd633d937a537a787abf"
  else
    sha256 "89cab7e1b9eb49fce43b372d644354a8f25df8c0edbb162bd2eb54cf600b6e8b"
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