class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.6.4"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "5a3dfe551054438ff0f8871c0258daa0f51142b09db8fb32606a47a3532dc7a4"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "49ca107417aeda9b1c310cba4b3755556e6dd7ca4cf02c81bda190d3f309d77e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "7e6f080b268f55487bce654c564a1cc424b0aee075ee6bcd4fc54d8daf18f252"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "81f41f47c41617342d3ba3d74b4c2eaa559ecb8c898e77afd8c08f3cdcdd2155"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
