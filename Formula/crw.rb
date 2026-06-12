class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.15.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "42719341d256bc1c8587670cc83260b7448777a00f6fd0fb40aa2816ae700a74"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "4c8b5641816d5a1d93b4fb5d093c82d8f7917b01ec62acb2c8622f99c2d6af2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "a9a42f0a43a2be4733916eae104f9f7f145b47ae9c3a262da9f9b57748a8084e"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "4f1c513778bbb299a0afa40062ffd1c0eeaaa189940788162718fee1e4854584"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
