class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.08cccb0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-08cccb0/threedoors-a-darwin-arm64"
    sha256 "fe7fb7ed5be3c134f070bab501f5d1609c14b03929b47fa833d2c1b178523928"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-08cccb0/threedoors-a-darwin-amd64"
    sha256 "9681dadfe74ed84ac4b5ce24f36abc54e9c8b3da1c8eab2ce4a9eb6a1b71088a"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-08cccb0/threedoors-a-linux-amd64"
    sha256 "f5a10d2d8f246c1e57ccf30dc00c102acd07ac88bc9884fb8e7488f43af6df5b"
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
