require "mkmf"

cask "snowcli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.6.0"

  if RbConfig::CONFIG["host_os"].include?("darwin")
    os = "darwin"
    ext = "pkg"

    if Hardware::CPU.intel?
      sha256 "0dc0573d0964708ddbc72a8f8c419c16283a86d6f8e1779d1e5e40cbb723d4fe"
      arch = "x86_64"
    else
      sha256 "571062aa89f261193aa711468133de655d3346a2f6bf693b74f35fea888c4e51"
      arch = "arm64"
    end

  elsif RbConfig::CONFIG["host_os"].include?("linux")
    os = "linux"

    if Hardware::CPU.intel?
      sha256 "38d39b391d759ec27fdeabe2da902be0367b642632bf59ce1181ec15966a9dd5"
      arch = "x86_64"
    else
      sha256 "f42bef605184f19facff945848f80e9864469663da458d84ee0385da2ce67864"
      arch = "aaarch64"
    end

    if find_executable0('dpkg')
      ext = "deb"
    elsif find_executable0('rpm')
      ext = "rpm"
    end
  end
  puts ext
  puts "https://sfc-repo.snowflakecomputing.com/snowflake-cli/#{os}_#{arch}/#{version}/snowflake-cli-#{version}-#{os}-#{arch}.#{ext}"
  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/#{os}_#{arch}/#{version}/snowflake-cli-#{version}-#{os}-#{arch}.#{ext}"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_arm64/index.html"
    regex(/>(\d+\.\d+\.\d+)</i)
  end

  pkg "snowflake-cli-#{version}-darwin-#{arch}.pkg"
  uninstall pkgutil: "com.snowflake.cli"
end