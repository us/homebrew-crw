class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.20.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "011ba7d6c84241541583c764f98168ac624682689ed784b8d2c044ac7adf36f0"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "14b9ca80eca1f423aa9ecf40d00f61a00ed8ebcd67c1dfecb14fb4456974ae5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "45b73297364d598f5dbc2b66a68e5ff9bf4db244a97199af2f0d0a0e750664f8"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "de986b8635b8ef090a7ccbf388cb1c5e31e9a4e92a280f5256b19282454f5123"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
