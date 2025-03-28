cask "snowflake-cli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.5.0"
  arch arm: "arm64", intel: "x86_64"

  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_#{arch}/#{version}/snowflake-cli-#{version}-darwin-#{arch}.pkg",
      verified: "sfc-repo.snowflakecomputing.com/"
  sha256 arm: "941df9516c0b966787969f4f695fad0d15147588958263c425b4e63f5071ee8f",
         intel: "e717b386b801945e7aa9117f88f0e534ab64ba6c1a39d7f3b49bff63a121a03b"

  livecheck do
      url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_arm64/index.html"
      regex(/href="\d+\.\d+\.\d+(?=\/index\.html">)/)
  end

  pkg "snowflake-cli-#{version}-darwin-arm64.pkg"
end
