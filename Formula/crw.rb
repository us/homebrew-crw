class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.18.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "0685e4c77eb1ce89b0f5087566907fefca7d607f75e90b94d2af873eab2fb9de"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "b6542d279dc5b3ddffce90614c8f792aa349e143c4e3fe2d040a7a8f4fca6fac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "a16d29a9f6b65a04ee003b39ed2e00f2e3cc3f05af67a347711af795d2d29da2"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "4abcf769045c5b8c6a6033f84563cd66a5be9947d42c2c20b27c8056fc6327d4"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
