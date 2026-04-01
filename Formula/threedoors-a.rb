class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260401.031829.dea971c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-031829-dea971c/threedoors-a-darwin-arm64"
    sha256 "f7a4b1987881d3fba073ef6e68d68083ecea5804dd91f84afd634c8d08a72bab"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-031829-dea971c/threedoors-a-darwin-amd64"
    sha256 "9c2a0d7eb854bf6410b66c3c3d9a9a7002a0bef96e276598c04e0f6216355a56"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-031829-dea971c/threedoors-a-linux-amd64"
    sha256 "6a5c0137dfd5003ac136f8d18cd2eb40b69d3fb9e639658e74f73ca84dbec1f0"
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
