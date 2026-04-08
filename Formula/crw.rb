class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.3.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "b1ccee1d77ae581e6b3214785bae8d3eb699795bcc5678e2187be3642c6d0339"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "9efcb9401afc8edc798ea9bdf309d78717e10e875efa12f5330d5f1ab65f1a74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "6fd33e298bbd46a29e638e580d9791ed27df3025a0ec8d7404086a5b65e72d6c"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "32db9f44b9782a52e811d3ea3a75b45fb558d9a0fee8a4cc7fbea8419b7973cf"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
