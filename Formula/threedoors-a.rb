class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.070848.fac4f68"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-070848-fac4f68/threedoors-a-darwin-arm64"
    sha256 "4f4b127796d65a42ca162af49dfdb8d3ddf60d08b4fa9e4c0816640375880da0"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-070848-fac4f68/threedoors-a-darwin-amd64"
    sha256 "dfa3ece16d8c31cbe2c2ff8f174bc49353c98ad6bd3b6e0e290133e4ef870f08"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-070848-fac4f68/threedoors-a-linux-amd64"
    sha256 "73ac81803eacbf2f6c2db29f1fe266602c33b12eab9148bc602fe8bbdb12cdd2"
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
