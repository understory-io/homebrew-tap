class Forest < Formula
  desc "Codify your development workflows: CI, deployments, and component sharing"
  homepage "https://github.com/understory-io/forest"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/understory-io/forest/releases/download/v0.1.2/forest-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "checksums/forest-v0.1.2-aarch64-apple-darwin.tar.gz.sha256:0905e1ee8f97c8534dd600b15435c0d7a6aea6a7ab81050a61a198c16bb92230"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/understory-io/forest/releases/download/v0.1.2/forest-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "checksums/forest-v0.1.2-aarch64-unknown-linux-gnu.tar.gz.sha256:78c2ec59ef833208cfb56529ba1679ca22d6169696095def66953ee2caa9ca5d"
    end
    on_intel do
      url "https://github.com/understory-io/forest/releases/download/v0.1.2/forest-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "checksums/forest-v0.1.2-x86_64-unknown-linux-gnu.tar.gz.sha256:3ffa9ef2c0b2726601d8636417c002302909ccb9c5cd658d56aba7d8e6737c4c"
    end
  end

  def install
    bin.install "forest"
  end

  test do
    # Smoke test: the binary should at least print its
    # version. The exact format is "forest <semver>" from
    # clap's default --version handler, so just match the
    # name and the version we just installed.
    assert_match version.to_s, shell_output("#{bin}/forest --version")
  end
end
