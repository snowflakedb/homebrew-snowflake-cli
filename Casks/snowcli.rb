cask "snowcli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.27.0"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "f6b8f5e54b2fe20ecf972d78c215f6aed2d9af698d4ad709babfcd8400b59091"
  else
    sha256 "1eb74e015ccd4446ffcceb78ad8fcb05e0a11cc0859bf0d2d209c5b48d6bd228"
  end

  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_#{arch}/#{version}/snowflake-cli-#{version}-darwin-#{arch}.pkg"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_arm64/index.html"
    regex(/<p style="display: none">(\d+\.\d+\.\d+)\//i)
  end

  pkg "snowflake-cli-#{version}-darwin-#{arch}.pkg"
  uninstall pkgutil: "com.snowflake.snowflake-cli"
end