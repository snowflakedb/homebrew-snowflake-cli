require "mkmf"

cask "snowflake-cli" do
  name "Snowflake CLI"
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "{{ sf_version }}"

  if RbConfig::CONFIG["host_os"] == "darwin"
    os "darwin"

    if Hardware::CPU.intel?
      sha256 "{{ sf_intel_sha }}"
      arch "x86_64"
    else
      sha256 "{{ sf_arm_sha }}"
      arch "arm64"
    end
  elsif RbConfig::CONFIG["host_os"] == "linux"
    os "linux"
    ext "pkg"

    if Hardware::CPU.intel?
      sha256 "{{ sf_linux_intel_sha }}"
      arch "x86_64"
    else
      sha256 "{{ sf_linux_aarch_sha }}"
      arch "aaarch64"
    end

    if find_executable0 'dpkg'
      ext "deb"
    elsif find_executable0 'rpm'
      ext "rpm"
    end
  end

  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/#{os}_#{arch}/#{version}/snowflake-cli-#{version}-#{os}-#{arch}.#{ext}"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_arm64/index.html"
    regex(/>(\d+\.\d+\.\d+)</i)
  end

  pkg "snowflake-cli-#{version}-darwin-#{arch}.pkg"
  uninstall pkgutil: "com.snowflake.cli"
end