class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.3.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "98f07a17d3b65e192490251a320da61348798916ad36dcab177768dc1095cc23"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "2452eb5dba0b24abca18ffcc1dcf40129c6ae41a5af0b0d31f9b2fdf67ef3c53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "e8a98c235fb6547304d049e8ec9172ee40bcaf0904fee824ec5a7adc6ac315a1"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "0f24a106ab3063e1f929c20a86fb34670818ef22dee2b9bca2a513113eee5df8"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
