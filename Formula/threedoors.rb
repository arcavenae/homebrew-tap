class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.2337739"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-2337739/threedoors-darwin-arm64"
    sha256 "72dfc5c2a1e858d24324090cb01a54b1bb1d6392d26ec63271da8f2141219944"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-2337739/threedoors-darwin-amd64"
    sha256 "d3eb1bc7d23214056c507ef9e9c5d88f611bd6fb24a2f65907ec01fbf42dc90d"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
