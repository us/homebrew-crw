class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.6.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "b3bcc47e59c891cd270cc4844d88164004241080f19de66baf7b46439d054be4"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "b5c9c97d6638056dbb859ad3ad4810f445ced9b2bc9db63f2feb5eea871ca54d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "23318eec20f3db0344c012865cab834d5d5e30f4d13629ebbe82d9b46c2c249f"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "8223ef98c388f3998e164b8c53b40be0c42d5d4cc24121ce45ebe173e9401752"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
