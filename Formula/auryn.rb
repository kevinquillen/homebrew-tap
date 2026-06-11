# Homebrew formula template for Auryn.

class Auryn < Formula
  desc "Browse, search, preview, and resume AI coding sessions from the terminal"
  homepage "https://github.com/kevinquillen/auryn"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dafdf84b6d2c2b92ab9a0610f6deb2a3f989e5dffd319d725fee88de6a3ce33e"
    end
    on_intel do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ba42860eb3bb3f3681d48a31bfa7c30c96e9404ac665d52b2d416aac5c1c4f8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8eed597f495b2b7705d0c0c009621f42b6930e0c76b2225a6b69dac06436ddd6"
    end
    on_intel do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a6af4ce466077711ad2d9a38dcff972f83fa5f6c4ab0bd440d089e5dd76e973"
    end
  end

  def install
    bin.install "auryn"
  end

  test do
    assert_match "auryn", shell_output("#{bin}/auryn --version")
  end
end
