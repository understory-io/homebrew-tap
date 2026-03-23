class UnderstoryMcp < Formula
  desc "MCP server for the Understory API"
  homepage "https://github.com/understory-io/mcp"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/understory-io/mcp/releases/download/v0.1.0/understory-mcp-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c3b33583129358affe9a785722efe51d905acc176d2595e9a37c0b6d50735c44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/understory-io/mcp/releases/download/v0.1.0/understory-mcp-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/understory-io/mcp/releases/download/v0.1.0/understory-mcp-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "understory-mcp"
  end
end
