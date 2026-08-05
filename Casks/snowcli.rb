cask "snowcli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.24.0"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "64d81b71791398676b576a1f4f8a2c66e807aeda696e1def5c52d1e392133f0b"
  else
    sha256 "5d6c78ae9f100dd5336ee70cdaa30992840f0834e298e76df188055b7cec2264"
  end

  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_#{arch}/#{version}/snowflake-cli-#{version}-darwin-#{arch}.pkg"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_arm64/index.html"
    regex(/<p style="display: none">(\d+\.\d+\.\d+)\//i)
  end

  pkg "snowflake-cli-#{version}-darwin-#{arch}.pkg"
  uninstall pkgutil: "com.snowflake.cli"
end