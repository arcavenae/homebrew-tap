class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.d19df9e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-d19df9e/threedoors-a-darwin-arm64"
    sha256 "1214c0d7161295c69a209b902720dcee36c0bcf1540060d5cd9d2f3b235e4cc5"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-d19df9e/threedoors-a-darwin-amd64"
    sha256 "ea7e5b377f1a24bcd53f87b80fb7fea3b48e854f307a4d8279c4718e6db851d6"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-d19df9e/threedoors-a-linux-amd64"
    sha256 "df5e34817d0112ad4b2daa9a1c3de9f90a3bb9352413f209863f6fc9f98c07d9"
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
