class Nexio < Formula
  desc "Nexio CLI tool"
  homepage "https://github.com/denesbeck/nexio"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/denesbeck/nexio/releases/download/v0.2.0/nexio-darwin-arm64.tar.gz"
      sha256 "7376140da5c90a35d1d505b90f5efde40bcd676786d8ffaf970c64c195c45bad"
    else
      url "https://github.com/denesbeck/nexio/releases/download/v0.2.0/nexio-darwin-amd64.tar.gz"
      sha256 "bb09e78e71bc2d60ea1e1771030f464293f99cfdb8ec1cd1cc2c484740f5435a"
    end
  end

  on_linux do
    url "https://github.com/denesbeck/nexio/releases/download/v0.2.0/nexio-linux-amd64.tar.gz"
    sha256 "12208c9ab2e578dcd9abc4ce01607dae97068c2ccce46c907bb2b0f2b60289fa"
  end

  def install
    bin.install Dir["nexio-*"].first => "nexio"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/nexio --version")
  end
end
