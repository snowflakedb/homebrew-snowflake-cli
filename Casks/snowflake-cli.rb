cask "snowflake-cli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.7.2"

  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "fe3c650e21d55551af76c9220591b59deb9f11a24dec8cf56e428609893313dc"
  else
    sha256 "37b875b9248a557121585d4f22f6ad58d0aeaed1602a7765e9a9fa51dbeffcce"
  end

  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_#{arch}/#{version}/snowflake-cli-#{version}-darwin-#{arch}.pkg"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_arm64/index.html"
    regex(/>(\d+\.\d+\.\d+)</i)
  end

  pkg "snowflake-cli-#{version}-darwin-#{arch}.pkg"
  uninstall pkgutil: "com.snowflake.cli"
end