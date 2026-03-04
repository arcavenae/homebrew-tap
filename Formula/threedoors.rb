class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260304.479ffb0"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-479ffb0/threedoors-darwin-arm64"
    sha256 "c6a32d4ac9abb8c32fce69dcc5be84de12fc5a388b29932d259784d5496b2e07"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-479ffb0/threedoors-darwin-amd64"
    sha256 "4509ea5de75d9f624942f4506e62b4f95fdc6fd3a9e41d06d060afc665595ac3"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
