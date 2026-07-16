class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.25.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "c2f517bcf9984b3130ac0c00ec984795aca6ae54c9b2cf3dd14a30b0959ad928"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "9d08c2ca5100e6dd2adbc5466e65f2d0be3b20a5547e0675bfd454fda47a2b5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "624fca2149802c54b6fe3ae375c4c4c42829ebd8a8146d93b81b487df186544c"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "8e2079f5120c81d9ce2e0049593b659ffb680215cec260908dfce935c48af6d5"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
