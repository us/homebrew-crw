class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.17.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "0a84c3d5f3e738f8ac86d9688392fadd511f26d611ce8021969a34c8e3f54e5e"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "1f00078edb60bea3e6438016ae78a5a9d8e8b871c3bdee4bdb5c3641702b7241"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "b6c51dadb94d7c73516a7cecd71c8c2dfd173936fe4414343b0342c1eb319ec7"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "78794255ca1d95e953ba6d4eb5e1500e6ba9a5a1f6e8b28b1828746fc3a98da8"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
