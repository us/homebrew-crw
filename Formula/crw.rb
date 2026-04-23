class Crw < Formula
  desc "Web scraper built for AI agents — scrape any URL to markdown in one command"
  homepage "https://github.com/us/crw"
  version "0.4.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-arm64.tar.gz"
      sha256 "1a60f13a3a3dcc6cb574571da5d4ed4516dc3b60eafba4164e164bb5f6f296ef"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-darwin-x64.tar.gz"
      sha256 "9df59d4a975aade9dd6ebb321fb5ffd88ee1674ac9f6f0b4abbeb7a1c03a11e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-arm64.tar.gz"
      sha256 "8814cafa6e28df55dbf96bf6cd320c310dde690925facd119ee8633ddb9fd54a"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-linux-x64.tar.gz"
      sha256 "dad7348e825432169c4169e2326c291a387230938aa6eb774a679384a85e4e61"
    end
  end

  def install
    bin.install "crw"
  end

  test do
    assert_match "crw", shell_output("#{bin}/crw --help")
  end
end
