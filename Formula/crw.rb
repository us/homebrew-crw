class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.13.4"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "ea86ac8dd885a4a88c5d0443077ba55c8ae112c5dcf441fa1574a4d35e92bf49"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "63e5e49635fcfa9176183f7047ee94aeebba4642077d5654d2ef34e8adb850f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "7265571c9e79018a002f1e1d1314e01acd03859affa4b7f9ca46caa7340370c3"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "7267c36b79ede8d59e3445491b5b5d829e7541afbea33c35d8330cedc6d9290c"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
