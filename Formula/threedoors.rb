class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260304.e104252"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-e104252/threedoors-darwin-arm64"
    sha256 "e8c1aba022ccc9164c59b9f8d155ddb1b73a426648e1207d2156b3f141c8ded0"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-e104252/threedoors-darwin-amd64"
    sha256 "5d83a424447a4cff8875b72976003466e8082d3c995f6b7fd0463db78dedb879"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
