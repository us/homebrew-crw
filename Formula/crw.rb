class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.18.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "e48e29a916ccef759d7fa90dfff4ddf9faf0600c53a67d2c7975af309992edc1"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "e8e65ba744ecb5794157d5f8ca41093288a44a01f2cd195a47c6eec8d654b8ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "fcec6f4e4af94ad8e86f0a24e35774415617252afd726a3a7c677c95dc262376"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "8ad6fe8bacaf9957ff8046d815c3182011c534dd03144a4a957e89b154da6ed4"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
