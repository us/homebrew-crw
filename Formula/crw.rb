class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.13.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "176b8e14957fc86efb9abbaee8d5bb1762c2ac8da26b7f7273e5a5690e032d65"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "4b7ea6a22fdfeb88140e02e07517afd7c189a3bb2842bbc99dd32a1f7d114ed9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "1f32bb9554b950309d5729b7dde2133dcde9b68961568d73b250e32b91fc0441"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "37368d9ae5cad6de76a77374aa8b4df30c273bc026d91d8d02398bd783df904d"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
