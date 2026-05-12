class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.6.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "f3bd1a0a23acb619c410a51a89fc97984a156af279e0acf22c08778a7ee93e5c"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "f0537ccc2b5e7bfb784887fd7a1443effa669bcf84a60ad2b08d5947a3fb83da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "c9ac4dfdac539d498f1e7301d5adb9bb3b99bca5b6ac476dc3e5452f0027b630"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "20710b6c3cf9654952a2f9ac971a1133bf24068d766d2d8c45f7554c29be54d0"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
