class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.010440.a34b8e1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-010440-a34b8e1/threedoors-a-darwin-arm64"
    sha256 "c3b94d92f23d72dd046f98076b7662681d31b14781d784730f24621a1ef3d05b"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-010440-a34b8e1/threedoors-a-darwin-amd64"
    sha256 "7addf7e6acdc0bd321dbe28e0192e935e6fc6cf53c806a20fab720790800f4c0"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-010440-a34b8e1/threedoors-a-linux-amd64"
    sha256 "fbd63799afbafa1bb2341fb2cd8cdd1c57edc807d92e45927959e2475ea62af5"
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
