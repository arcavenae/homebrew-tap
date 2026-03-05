class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260305.b1034b6"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260305-b1034b6/threedoors-darwin-arm64"
    sha256 "04e3dd71652fc479d66d99a302383893334c8c1a456eefe4f354d675749bc54e"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260305-b1034b6/threedoors-darwin-amd64"
    sha256 "317606cce0185e4ff378b5efdd2bb46c9b322689d732a7d28c89d34a2f3eb86b"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
