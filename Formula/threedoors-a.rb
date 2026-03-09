class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.10a84c4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-10a84c4/threedoors-a-darwin-arm64"
    sha256 "a56b09b1ec0deebb7126a4984cbd4e2af172fcb7a402dda89c622f24d4277b50"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-10a84c4/threedoors-a-darwin-amd64"
    sha256 "ab05b09d3d72d17e15d4b12449cade1b6c4dfacdea03c51f2d57214a6ee251cc"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-10a84c4/threedoors-a-linux-amd64"
    sha256 "8e44bde1186a609bc4612b0a04fa54f9e6b6da2d1b2c8a214077194020aad8bf"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.mac?
      bin.install "threedoors-a-darwin-amd64" => "threedoors-a"
    elsif OS.linux?
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
