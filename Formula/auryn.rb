# Homebrew formula template for Auryn.

class Auryn < Formula
  desc "Browse, search, preview, and resume AI coding sessions from the terminal"
  homepage "https://github.com/kevinquillen/auryn"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "13778686cb88dca20be7cc7a1409c9f3c2e76b4389e1ea4d0ede93ab46ee73f2"
    end
    on_intel do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "db8b137748976a9be4b7869621feffd3d340af7cb4e74a8a31da65b53c88866d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c9020aa4bca7cff9d56312c170e90b76a6c86d3c9ecc7ff6ffc2cb39c2e1e33"
    end
    on_intel do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d47f3ffb3d3c26615db997b4a703f311feb65dfb562f3434419f04ac3acec536"
    end
  end

  def install
    bin.install "auryn"
  end

  test do
    assert_match "auryn", shell_output("#{bin}/auryn --version")
  end
end
