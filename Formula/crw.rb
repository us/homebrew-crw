class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.8.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "691453fd866889fb2aceb64caf4dd46826d85e12c7815e35134bad1a1ca63ec7"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "04fda8d7dfa2d19e7cc5ccf1ab8252a4282d8068560cff22490ec644f9e89c15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "430d7c74ccca2cfa260bab082b8b71eb89efb9bf7bb48b48df86fea467169ba7"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "1dd08256b11a13655ff30701157fad29173aacf6742f06c9bbb8d6b7a8db4a3b"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
