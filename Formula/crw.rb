class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.21.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "4dd34dd8f92b5c9e87329a9ad78f0fc031b77c5a43421469d5f3c5767a2664ac"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "e71943a2694d4b194748535215b00dea1b6deac030c360c827f5d21d8c10699b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "31b79bc1b3a766d1ab4c4715a903d9f3a685961cfaf15579dc8b0d46b00edd5d"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "cb39a6179c35c62aa846395b22bf218d6411aa24d77dd0e14693c5bea8371bb2"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
