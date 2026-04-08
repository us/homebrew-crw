class CrwServer < Formula
  desc "Firecrawl-compatible web scraper API server"
  homepage "https://github.com/us/crw"
  version "0.3.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-server-darwin-arm64.tar.gz"
      sha256 "712cdb5b5156c521c83db0596ef2c9e993e4419464ce596482f6f9f90bd04ad5"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-server-darwin-x64.tar.gz"
      sha256 "ca8473ba3963a0eb8089a7ef11c0eabc51d3867cc63741d07b236b2764b6c3cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-server-linux-arm64.tar.gz"
      sha256 "f11c4b00149131c346d7d9b3e5eb87652a0161d3c59a5508ed9e5fae1100c60e"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-server-linux-x64.tar.gz"
      sha256 "219793cf0e8defaa1b0368f822dfd97dac0324473aabb0f973a20e54cb9d1e6f"
    end
  end

  def install
    bin.install "crw-server"
  end

  test do
    assert_match "crw-server", shell_output("#{bin}/crw-server --help")
  end
end
