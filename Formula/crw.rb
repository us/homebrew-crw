class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.22.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "11b0fd03d2ab7b7a7dcfc8c469e0a8fa3eb70910e5aa4c233c5ae19ed43bc3c4"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "eaacae1927ea00bd08b057ef724cac3677b3a96924f37ffdd18d2cc720021f38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "b2793ad2eb6db31b7a73ec1015a05173d79eb171a5b60a3772552cedbfec52b7"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "93d2774323da7cc74ed6d0b298d28a21cf990c3e852f73bb84fc8717bdbf4ef6"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
