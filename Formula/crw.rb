class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.13.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "109facdfe1941d2e90ed0e58eccd92858f83afecd3be0a96a17d94170610b71f"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "b79b3b74c643d008bd1c9805ee5886490de42682887c9413a35b5ba7c1f11534"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "74ab55f480ff3eb30ba7d0617a16867a05242b473b4351677701112e921de8ad"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "e4236ca8ab0e488193f4d4f0dbfc1776b18ccb3c45200fb23b750325a0f6f8eb"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
