class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.12.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "0e2f681b5c3a6bab865dc75f22075ea4cd4eb0d4bc6f442e1de6c7ffb7664502"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "81d83c222d82abcac41daf09aef6f22a2acf652ad0e80ed6ee9e9b9c222474bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "1a5cb9cc3443688f071d0a1398357c2d22afe6ddda5b692c76701e25f4445f97"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "84c71716279ffc3ad58a5f8db71b8bf1a27d9bd3636c22fc674eb9f301004944"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
