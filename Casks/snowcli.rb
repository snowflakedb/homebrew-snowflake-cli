cask "snowcli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.29.0"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "738ffaa41777abc5bfda215eb8c4d1385f9f0a2672a59a43d5aa49cc5e39181e"
  else
    sha256 "7387e25882d5b4d8d4f0f5c8c8400226456af5626d024878af1c64c9539875d2"
  end

  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_#{arch}/#{version}/snowflake-cli-#{version}-darwin-#{arch}.pkg"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_arm64/index.html"
    regex(/<p style="display: none">(\d+\.\d+\.\d+)\//i)
  end

  pkg "snowflake-cli-#{version}-darwin-#{arch}.pkg"
  uninstall pkgutil: "com.snowflake.snowflake-cli",
            delete: "/etc/paths.d/snowflake-cli"
end