class Nexio < Formula
  desc "Nexio CLI tool"
  homepage "https://github.com/denesbeck/nexio"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/denesbeck/nexio/releases/download/v0.1.0/nexio-darwin-arm64.tar.gz"
      sha256 "3f5b3dec1b03304a9eb23ad5dc49e9453021d381a1d029fb512cf96be67330a4"
    else
      url "https://github.com/denesbeck/nexio/releases/download/v0.1.0/nexio-darwin-amd64.tar.gz"
      sha256 "5dcaec24dd30e67f99b749ae4bc9dc15148ec7224ad257c17900693b8aeace5c"
    end
  end

  on_linux do
    url "https://github.com/denesbeck/nexio/releases/download/v0.1.0/nexio-linux-amd64.tar.gz"
    sha256 "9f6a8eac618dc7d85a3c980f26a029d3a6342ad444d5febf35237155b6e944de"
  end

  def install
    bin.install Dir["nexio-*"].first => "nexio"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/nexio --version")
  end
end
