class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.24.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "7af9ddaaff1906186169e22c7d56e0d679e0ea9c4a1489fc94111f2ee032971f"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "dfa83556b19e947fec52ae5f052343dae3e58f04646be0cbc254d22e6b2a46d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "aa3a3525a2606e46bd9e92be64e0d56eafbd022793f532eacb72bbca84fd8e18"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "a00d9ce708d1f57c852e9370ba6fd3cdea9d98899dc2f3f7d0fbfa129521b345"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
