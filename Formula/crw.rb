class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.16.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "a80f7b24b68f32fb818bd3a3ed408a3b08df2338ae4f2e2ee3ec2db93e93a9b3"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "8d77cd4bb749118c0aad6819641d37148a241947157c2e74615fe3f74ee98cb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "25891e58db1a0877adbfca3f71f7a1d4bb901217076a2346253065cd978b9120"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "274e9088578ccfa2673dfe123fb569ea871f3c07170d583436af8d8ce464d20b"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
