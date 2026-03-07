class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.acf524a"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-acf524a/threedoors-darwin-arm64"
    sha256 "b3f9f9071211f5f3a32a376e0c358d285449938ca9f454de0a6a4658dc4b2a79"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-acf524a/threedoors-darwin-amd64"
    sha256 "99ef10a3650540d430ca11257a525efc4b30f12cabff2cf35d620f321dfab46b"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
