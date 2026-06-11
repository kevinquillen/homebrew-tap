# Homebrew formula template for Auryn.

class Auryn < Formula
  desc "Browse, search, preview, and resume AI coding sessions from the terminal"
  homepage "https://github.com/kevinquillen/auryn"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a32f251d90838cfa47055ce28e33ef18402b652b5d7162ef44eaf885b6d14366"
    end
    on_intel do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "475356e12545ee67c92ebf85c8f7c6130085e47c273af91a8b4d1ba65f3cdfba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5884599a57c404cdb1faacd788e9200ca94097b13324e49123dcea6484a7c639"
    end
    on_intel do
      url "https://github.com/kevinquillen/auryn/releases/download/v#{version}/auryn-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1cc33ae336623227299451577e088143584c287438a4dea40d505043e58d9d2"
    end
  end

  def install
    bin.install "auryn"
  end

  test do
    assert_match "auryn", shell_output("#{bin}/auryn --version")
  end
end
