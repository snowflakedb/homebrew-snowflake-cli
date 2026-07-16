cask "snowcli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.23.0"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "1e47578262435e2a618e0e3f5d0f52bc6b7019adb630ca04720bdfa032327da5"
  else
    sha256 "0d2bcce519fc5783f39f490fb4d2df2060d15ae3b5fc1696d0edea1711798a3f"
  end

  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_#{arch}/#{version}/snowflake-cli-#{version}-darwin-#{arch}.pkg"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_arm64/index.html"
    regex(/<p style="display: none">(\d+\.\d+\.\d+)\//i)
  end

  pkg "snowflake-cli-#{version}-darwin-#{arch}.pkg"
  uninstall pkgutil: "com.snowflake.cli"
end