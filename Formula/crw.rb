class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.19.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "cb9da419e05e09e8e7c825b10d7762e5b111a9adacdd4a9b41a1f9ee7caecb47"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "df0916f49302ff81420130fa9143746fa1efa0195b455f0bb6c06748bcce8653"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "d67d8aaaecf1fefe0bdf7cc414c618421d8619f3be8d2f69d61814dc83021064"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "2865afbdc922e8b4d23b4fc1f047d3291ed38b65dc3ff7a224ceac2703010ffa"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
