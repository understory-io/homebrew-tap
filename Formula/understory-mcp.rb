class UnderstoryMcp < Formula
  desc "MCP server for the Understory API"
  homepage "https://github.com/understory-io/mcp"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/understory-io/mcp/releases/download/v0.2.3/understory-mcp-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "checksums/understory-mcp-v0.2.3-aarch64-apple-darwin.tar.gz.sha256:2c05ed6981135cdbf5899ee3db750e8bdd2e474b6094227199bb3ac9ab62e560"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/understory-io/mcp/releases/download/v0.2.3/understory-mcp-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "checksums/understory-mcp-v0.2.3-aarch64-unknown-linux-gnu.tar.gz.sha256:bba86c672f4c407c21e12046c7e7c004418effce45669b96f6abd15c5beff8ea"
    end
    on_intel do
      url "https://github.com/understory-io/mcp/releases/download/v0.2.3/understory-mcp-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "checksums/understory-mcp-v0.2.3-x86_64-unknown-linux-gnu.tar.gz.sha256:b45942300fc66759c0ec178986f8f5ae369b83de2aa798db1f3ef9dd1324d95b"
    end
  end

  def install
    bin.install "understory-mcp"
  end
end
