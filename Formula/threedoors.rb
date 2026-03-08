class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.4a8c6de"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-4a8c6de/threedoors-darwin-arm64"
    sha256 "34be437361314f49febc21225097a9d565aaab890769d4cc38eb04b4d2be7a3d"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-4a8c6de/threedoors-darwin-amd64"
    sha256 "fe06a95e951f20aa2abfa0039f41c0371b6d2a5c0e735d69beef96acc6cf3cf5"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
