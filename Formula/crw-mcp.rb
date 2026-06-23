class CrwMcp < Formula
  desc "MCP server for CRW — give AI agents web scraping tools"
  homepage "https://github.com/us/crw"
  version "0.18.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-mcp-darwin-arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-mcp-darwin-x64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-mcp-linux-arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-mcp-linux-x64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "crw-mcp"
  end

  test do
    assert_match "crw-mcp", shell_output("#{bin}/crw-mcp --help")
  end
end
