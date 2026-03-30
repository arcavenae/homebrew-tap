class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.033708.ec9f445"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-033708-ec9f445/threedoors-a-darwin-arm64"
    sha256 "a349769863f1a0c29e2a1f3c0947dc867d4cda0715eba9b0c7819cffb4b00c30"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-033708-ec9f445/threedoors-a-darwin-amd64"
    sha256 "220c94e6e687e9531a4115042b97faf6d6a49d792df9e6a7059af83a15e6fb07"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-033708-ec9f445/threedoors-a-linux-amd64"
    sha256 "d5c0360ba72d791234f29657682155f7936f87335f3cb49b52f42914d8994acc"
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
