class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.4e24591"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-4e24591/threedoors-darwin-arm64"
    sha256 "15ec8656e42f767a0f85fb011d1995d7b146699aae6bcf8e0cb5d91194fa745f"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-4e24591/threedoors-darwin-amd64"
    sha256 "d7059077a8c4b871bcd6cd10f5ee12074649897a9e08c4ebd4f3185f4383f875"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
