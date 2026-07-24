class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.28.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "e2f29f2b80a1181d548f8b9e9b8f7bbe39ded52db9b25db322375f3364fadb4d"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "7ce1131085c202f4318d10cc282b99635019baf881f146ce3705a22024d69f65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "f2be55a3b9790195a48647d55fc8b010eb8c9300ff30287e12d25a816fde31da"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "f5c630fd10d2e449a2fb4931f1af1c4a2c24bfa54010f7a8776bbdda3d1f26bc"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
