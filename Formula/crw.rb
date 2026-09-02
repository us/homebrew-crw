class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.33.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "d5340480725e63b09b7046a78ffb9e4d27922b27a228f11b12c3df33e69bad7c"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "cd9b75e89ebeaffd69f728bc4965bc459386aa1c2f7daf611cc3f8e026abac72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "b75d12159fdeeff121e226a2df8dec122adffa88161ee039db90cf1c42f34a98"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "f29091aadd2a8b18f0712ed6bb484ae899c2e7f297bab55a6368f2fe73544b10"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
