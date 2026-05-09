class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.6.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "14b8a1dfd4e4349334bcc912b99ef915738f89c91d7a8636366e65175b17caa3"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "6228690e60ab309ff61c34547edf93ff5a5d25179fd5e0175834667e1a6190f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "358ff91968dfb5c789b2ca3cd29cd2baf7afebbf75a0cd2e9ba64925e834363d"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "7d7f070c0a5cd5a4905c61c6c794f36ef314b946bff99fe1cddff0babb6dd985"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
