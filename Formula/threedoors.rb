class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.cd759b4"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-cd759b4/threedoors-darwin-arm64"
    sha256 "671f7ec59072750e83075f5ed09eb9c2836b8431f9bd724c6e3c1f53789b10fa"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-cd759b4/threedoors-darwin-amd64"
    sha256 "ff09b2cd08cd8c1ee2b06879b3d1adcb5d7879ea79d64512c580be1d8a7d9f30"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
