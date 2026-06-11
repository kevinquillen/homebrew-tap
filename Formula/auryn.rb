# Homebrew formula template for Auryn.

class Auryn < Formula
  desc "Browse, search, preview, and resume AI coding sessions from the terminal"
  homepage "https://github.com/kevinquillen/auryn"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1bbf715bad9e8b0985c6f15423bc1a56041bfa05ddae48ebd93c4bebd512c797"
    end
    on_intel do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "61ef8eb3ad785d9b5002c4d24411a05778d19f9a6ed330566afc168c1cb2b441"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e37cd2502785e225eb3f3accfd417277bac0658b061c9c5498ef042eec277ab"
    end
    on_intel do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d09d32b617e667a87c4877a565793b05af08e3d20711f1427a0d71514ec47af3"
    end
  end

  def install
    bin.install "auryn"
  end

  test do
    assert_match "auryn", shell_output("#{bin}/auryn --version")
  end
end
