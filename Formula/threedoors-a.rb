class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260401.032949.a58fecf"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-032949-a58fecf/threedoors-a-darwin-arm64"
    sha256 "a09bebd32983bc02f8105da7b10556e453acb8a5ab820b5132231fe862c741b7"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-032949-a58fecf/threedoors-a-darwin-amd64"
    sha256 "b8859a8530f5f0a13eafe6077a8cea55e4c6dffee6750c3e8c3467a7108b2873"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-032949-a58fecf/threedoors-a-linux-amd64"
    sha256 "f87b6d1989ce4c01674af8899d255a89d8e2ec795cd7900d86695dfaa9941f33"
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
