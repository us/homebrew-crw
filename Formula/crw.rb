class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.15.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "f2c644a2df158b684170452a3462932a8e2ef84469608e8f2b7171f851e59641"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "c3f547ec8bb3311ec76214a1c9de6ab206136e5255f69092947477e87904cbeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "bb6548b79ebf4713fd2c97ed9ce481eb79203fce6c074ad4a883bf65630dd2c4"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "1c5adfa7f4ae9fd4b288dbf5ae183d07de6ac1c6ee542cd7444a073ab9dd77df"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
