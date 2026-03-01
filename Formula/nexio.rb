class Nexio < Formula
  desc "Nexio CLI tool"
  homepage "https://github.com/denesbeck/nexio"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/denesbeck/nexio/releases/download/v0.1.1/nexio-darwin-arm64.tar.gz"
      sha256 "920ecd71dcf4eef44a3c553fe39d5ee22200cea58055c40f06d1bec12d1de3f6"
    else
      url "https://github.com/denesbeck/nexio/releases/download/v0.1.1/nexio-darwin-amd64.tar.gz"
      sha256 "db0fed58aa21afb5760e864f28427897ed9ef43e0e23934bd9769d7881357f24"
    end
  end

  on_linux do
    url "https://github.com/denesbeck/nexio/releases/download/v0.1.1/nexio-linux-amd64.tar.gz"
    sha256 "6cd11234e9ebf76aa96defc1a19ebc3e56a06a1e127d21c806822ffda06072d7"
  end

  def install
    bin.install Dir["nexio-*"].first => "nexio"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/nexio --version")
  end
end
