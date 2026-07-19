class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.26.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "5942a3c3403bbae4301dd2e9d8fb6f41e2dad083aa5bf76960d07f4c63f35120"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "e7b909af5348799e61e7cc4728ee7a14cf0fae431983632c8ea931e22c3d0c3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "6829fdc1119bcd4711835069616cd5fe6eb3741fe86e29a36495a89ab3f10144"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "e1eaaf96b7c49e70bcd091e795ea2ab0997cbf0142ba47d839988f04ec587ae5"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
