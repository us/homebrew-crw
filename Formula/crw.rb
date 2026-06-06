class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.13.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "eeb1406c33b435fda02d94497c28355b3570f2571e0110aff0d2902dcfde5c19"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "143f46c3362ff820bab57f221ca1e1e3b89f1d1015a31895e58d3f4bb3eba3bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "4c4198e54a0768ff54cfc008a1ed29e1bfdaa4bf151b46e9cc8e5d5ce044e2bb"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "570f20d4360cd2636a5b03c47f67c7335e078e9b0a8b2a6672c87870e04f5a8d"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
