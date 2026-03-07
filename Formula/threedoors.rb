class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.f8096fc"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-f8096fc/threedoors-darwin-arm64"
    sha256 "a6f42787fa989eabf0141342affda61000a2355ccfcac20e8b48e9afb1420866"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-f8096fc/threedoors-darwin-amd64"
    sha256 "4e5430ee08d2bf2bc8d3b74877d5c5b4fa9da0c57af6eafddf7b6d3963fe9138"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
