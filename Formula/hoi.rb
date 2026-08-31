# Homebrew formula template for Hoi.

class Hoi < Formula
  desc "Cross-platform command runner for development teams"
  homepage "https://github.com/kevinquillen/hoi"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kevinquillen/hoi/releases/download/v#{version}/hoi-macOS-arm64.tar.gz"
      sha256 "90886cb5a235338efe9b9229d4d7ea560f00f1b869ed5eeb88a6888caad16303"
    end
    on_intel do
      url "https://github.com/kevinquillen/hoi/releases/download/v#{version}/hoi-macOS-x86_64.tar.gz"
      sha256 "7607ec94b0c35d391bad0b1459e4c1128f4dc77cdf7e42ba9b8c5f766fb1035b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kevinquillen/hoi/releases/download/v#{version}/hoi-Linux-musl-arm64.tar.gz"
      sha256 "cbf9e78651c35cfa29820d816a0694c7dccf41a5c8c73d4cb8f03b96dc3d06e0"
    end
    on_intel do
      url "https://github.com/kevinquillen/hoi/releases/download/v#{version}/hoi-Linux-musl-x86_64.tar.gz"
      sha256 "cfa8f097059b055fbf536a7dfca23cbfbd0227a71b5e6ebabdf967e2aa34349f"
    end
  end

  def install
    bin.install "hoi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoi --version")
  end
end
