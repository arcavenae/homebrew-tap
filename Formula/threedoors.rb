class Threedoors < Formula
  desc "Radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.7f4800e"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-7f4800e/threedoors-darwin-arm64"
    sha256 "ff6ebeb20e4cc3bee102712342ddf5112a68b9327eca599ffb35920be2ef1771"
  else
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-7f4800e/threedoors-darwin-amd64"
    sha256 "188fae5924d8bda215983d78fd6a9b08138cb24d6805bcce131ef367490c390a"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1")
  end
end
