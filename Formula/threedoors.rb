class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.897500b"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-897500b/threedoors-darwin-arm64"
    sha256 "aa1fac8a84fe5bb654c8feff6e2b41e7917fffcfe2d3edf6ac7a575196c940ba"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-897500b/threedoors-darwin-amd64"
    sha256 "63c087a44876360df17efa2f1fc277509c5df4acbccbaf22f52840e33bd224ae"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
