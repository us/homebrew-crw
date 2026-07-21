class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.26.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "c00d86b02fbd116961fa8c40575ef66f4247d25ea5f8fcd45f11a71ad4124f0e"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "c859b7bb6f80f43e069575112342a3bb296e27a571ea096a49fce3da8d6d45dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "d0a29dd7b598a85e487ca2a85c4251a2a8558e1a2d626c6a76173f9ed1eef640"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "b3a9c1235ebf4df0965fc717d840999d6f2fa46d9a6c91f99d22185d4f5c10b9"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
