class CrwMcp < Formula
  desc "MCP server for CRW — give AI agents web scraping tools"
  homepage "https://github.com/us/crw"
  version "0.3.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-mcp-darwin-arm64.tar.gz"
      sha256 "1fe0ad27f072549b8ad1a81c5e3c198b89816ed7d9d4693fce10ec4d79f1bd0c"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-mcp-darwin-x64.tar.gz"
      sha256 "095e882bc3705a582c4033b139bb37839baf003e19281f0bbdc08699707b9640"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-mcp-linux-arm64.tar.gz"
      sha256 "d845b11f60b5699e204342cd17654a8e6cdf9cd4cee7e6d122c14706400323dc"
    end
    on_intel do
      url "https://github.com/us/crw/releases/download/v#{version}/crw-mcp-linux-x64.tar.gz"
      sha256 "db29a1976e91b475e42bd8822e09bc9f3520e545d3071d37c209348c45a66ab1"
    end
  end

  def install
    bin.install "crw-mcp"
  end

  test do
    assert_match "crw-mcp", shell_output("#{bin}/crw-mcp --help")
  end
end
