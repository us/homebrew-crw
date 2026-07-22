class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.27.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "0930d0003198aa32110b64c918fff6acacf9a72b874cbfee648c42210ef3e8b3"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "412f58c379aa30b4e2dfb13e98a132dfef2701234d6db516c97f74a306deceb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "141cfce5d7f27a088e5d4b7bdc0371ea2b407afaf426d69107424b3e9d6a5c11"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "ea3e6da7de3af16c3be347d9d2fc985920cfccf403b738fceb25213be6d3ebe6"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
