class CrwServer < Formula
  desc "Firecrawl-compatible web scraper API server"
  homepage "https://github.com/us/crw"
  version "0.18.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-server-darwin-arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-server-darwin-x64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-server-linux-arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-server-linux-x64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "crw-server"
  end

  test do
    assert_match "crw-server", shell_output("#{bin}/crw-server --help")
  end
end
