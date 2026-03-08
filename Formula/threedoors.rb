class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.9a23a85"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-9a23a85/threedoors-darwin-arm64"
    sha256 "7507af55f2b343b73c73c3833fc2e2cfdf3d475595715e2958b068a152ee7f8a"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-9a23a85/threedoors-darwin-amd64"
    sha256 "c32de1cf559910396cf31dc9674462a259274f9ea89a969b36bf41fd2156580b"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
