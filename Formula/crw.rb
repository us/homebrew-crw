class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.21.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "7c4c118db7d4bab74685ca9602e27fab6aa990063332d7e39257b175ff608488"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "47c86bed529f5a74701e9305730d84a6e762f9e3ae417a3be28bb90b8f9d79cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "a2c06492a65a06c40afc16fc4f980009809b32b9c7bde89c6d5320bd1c1f865d"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "e07ae85de52fab8409c0f0384e5b5fb4afea6e2a11cbd0af1e1db9eb9163048f"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
