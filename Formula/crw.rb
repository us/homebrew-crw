class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.3.6"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "cd3216552f353590b88f18417e7b8cebbc1f63f98ac46370f37f7e73f93ea6a0"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "02166a8aafd567022ee4f4e7c3c85ba5c07dbe109c4c05cad40f659de3878fb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "3e3f15cc035e1ef252696cb18d07b7dad4974faddfb98b61114f7154a0fd9bef"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "418b3ead16e890e01fa390d2ee6341c66b1b89d1bab11a032c7a237312a5ac10"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
