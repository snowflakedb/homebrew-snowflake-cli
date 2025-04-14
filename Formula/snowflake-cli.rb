class Snowflake-cli < Formula
    desc "A CLI for Snowflake development"
  homepage "https://github.com/snowflakedb/snowflake-cli"
  version "3.6.0"

  bottle do
    root_url "https://sfc-repo.snowflakecomputing.com/snowflake-cli"
    sha256  arm64_macos: "571062aa89f261193aa711468133de655d3346a2f6bf693b74f35fea888c4e51"
    sha256  x86_64_macos: "0dc0573d0964708ddbc72a8f8c419c16283a86d6f8e1779d1e5e40cbb723d4fe"
    sha256  x86_64_linux: "38d39b391d759ec27fdeabe2da902be0367b642632bf59ce1181ec15966a9dd5"
    sha256  aarch64_linux: "f42bef605184f19facff945848f80e9864469663da458d84ee0385da2ce67864"
  end

  os = OS.mac? ? "darwin" : "linux"

  if os == "darwin"
    arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
    ext = "pkg"
  elsif os == "linux"
    arch = Hardware::CPU.intel? ? "x86_64" : "aaarch64"
    ext = if which("dpkg")
            "deb"
          elsif which("rpm")
            "rpm"
          else
            raise "Unsupported Linux distribution"
          end
  end

  url "https://sfc-repo.snowflakecomputing.com/snowflake-cli/#{os}_#{arch}/#{version}/snowflake-cli-#{version}-#{os}-#{arch}.#{ext}"


  def install
    puts "download:  #{cached_download}"
    bin.install cached_download
  end

  test do
    system "#{bin}/snow", "--version"
  end
end