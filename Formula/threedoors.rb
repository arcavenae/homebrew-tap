class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.22eab03"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-22eab03/threedoors-darwin-arm64"
    sha256 "21ae3523ec2377cb5463f166c4f67f370061982a082a3916943d20e321ffa95e"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-22eab03/threedoors-darwin-amd64"
    sha256 "b38a64c2cf926c35ff30588734da09cb69480cdd73fd0c69734832dbb31c8f2b"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
