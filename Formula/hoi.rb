# Homebrew formula template for Hoi.

class Hoi < Formula
  desc "Cross-platform command runner for development teams"
  homepage "https://github.com/kevinquillen/hoi"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kevinquillen/hoi/releases/download/v#{version}/hoi-macOS-arm64.tar.gz"
      sha256 "2318521999b3b270455bd1626b27782c729a25d3cb7f744cc9511361156f6b19"
    end
    on_intel do
      url "https://github.com/kevinquillen/hoi/releases/download/v#{version}/hoi-macOS-x86_64.tar.gz"
      sha256 "5e290b36ad3febe37a733328a9e212212bcf525fb880bdddb745aab0e82fd6d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kevinquillen/hoi/releases/download/v#{version}/hoi-Linux-musl-arm64.tar.gz"
      sha256 "8cee8e2a59dca277ae9fd6d16fde6d38839ec6e2cb77b07d4191674ee9c9f69a"
    end
    on_intel do
      url "https://github.com/kevinquillen/hoi/releases/download/v#{version}/hoi-Linux-musl-x86_64.tar.gz"
      sha256 "0185dc3f9d0bde14d3cdf2bbafcc9b618a3fa334961d1e01b4ccb4983d9f65ab"
    end
  end

  def install
    bin.install "hoi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoi --version")
  end
end
