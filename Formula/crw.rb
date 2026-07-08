class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.21.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "568be00089617cdc7a8ca3492ab16ab2bd00848bb7069ead86714ea2af722532"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "1e9c6c42189e5b41cb27010d03accc4fd2b2a42f6ac1e4d3f24c2f3bc1c05ce4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "4c33fc2b3b7318e5661bb68cc095238676ae3b8dec4de6314bdae3c75cbd2d58"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "1a33db927d4e7dcf71f56aba67a45040d1bfbf19a415fbd5dd658496c5af2528"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
