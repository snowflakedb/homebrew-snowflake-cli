class SnowflakeCli < Formula
  desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.6.0"

  os = OS.mac? ? "darwin" : "linux"

  if os == "darwin"
    if Hardware::CPU.intel?
      arch = "x86_64"
      sha = "0dc0573d0964708ddbc72a8f8c419c16283a86d6f8e1779d1e5e40cbb723d4fe"
    else
      arch = "arm64"
      sha = "571062aa89f261193aa711468133de655d3346a2f6bf693b74f35fea888c4e51"
    end
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/darwin_#{arch}/#{version}/snowflake-cli-#{version}-#{os}-#{arch}.pkg"

  elsif os == "linux"
    if Hardware::CPU.intel?
      arch = "x86_64"
      sha = "38d39b391d759ec27fdeabe2da902be0367b642632bf59ce1181ec15966a9dd5"
    else
      arch = "aaarch64"
      sha = "f42bef605184f19facff945848f80e9864469663da458d84ee0385da2ce67864"
    end
    ext = if which("dpkg")
            "deb"
          elsif which("rpm")
            "rpm"
          else
            raise "Unsupported Linux distribution"
          end
    url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/linux_#{arch}/#{version}/snowflake-cli-#{version}.#{arch}.#{ext}"
  end

  def install
    puts "download:  #{cached_download}"
    bin.install cached_download
  end

  test do
    system "#{bin}/snow", "--version"
  end
end
