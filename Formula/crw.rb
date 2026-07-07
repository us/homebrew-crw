class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.21.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "1468360c1c978183cfc1e82e953fe8c57a1778f32be617ef941e0674a477e480"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "2b13cfae45520c9b2cb36f49fbdccf43622c648816af5ec0ff2b3a1d9679d163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "473a4fc90e0f46725c9f0d339c3c09e7e61a75a1f6d07a05f77f427465c47c3b"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "2c505fea8207e6b94f294650f30e8ac35149933a158c1e0394bf4a78d2d2a14c"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
