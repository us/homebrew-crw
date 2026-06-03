class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.11.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "5b2044db83c6e8657f225a4095d0980a0dbff31fe8a56dd183f18284be2181ee"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "f8a4361fbb2d3f5609686a6850df9ebd105f160ba114a16a1dd3b2386b02e7e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "ce3f07c752864f986e74431f82ef4c3c75fcf3d8dc94264c02005961b4aa8fb4"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "a886450ffbe91ae91c18a7a9b274e5d85695308460c65d7e05f7a386f7fa92b9"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
