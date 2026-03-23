class UnderstoryMcp < Formula
  desc "MCP server for the Understory API"
  homepage "https://github.com/understory-io/mcp"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/understory-io/mcp/releases/download/v0.2.0/understory-mcp-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "checksums/understory-mcp-v0.2.0-aarch64-apple-darwin.tar.gz.sha256:5a4fa635e1d85f83a057b3133b975f0d6ac4b333008e76289c033cc37bc29f51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/understory-io/mcp/releases/download/v0.2.0/understory-mcp-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "checksums/understory-mcp-v0.2.0-aarch64-unknown-linux-gnu.tar.gz.sha256:936438554adaa45b184ec385faca26f83b53d588a4161e0b8c645c724d827b37"
    end
    on_intel do
      url "https://github.com/understory-io/mcp/releases/download/v0.2.0/understory-mcp-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "checksums/understory-mcp-v0.2.0-x86_64-unknown-linux-gnu.tar.gz.sha256:fa8b2244c62be522a35e16a94e5740e6f94c4c0eb852219b762f52d7e0a35847"
    end
  end

  def install
    bin.install "understory-mcp"
  end
end
