class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.234505.a9444dc"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-234505-a9444dc/threedoors-a-darwin-arm64"
    sha256 "f606520e8ff548d63431d458671b2bb12ce1e6b4c0b228bdcfec3abc44cd0e4f"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-234505-a9444dc/threedoors-a-darwin-amd64"
    sha256 "ef2cd598f242e093a94bd916a75e90c97e8a845bdd0aae00100e3d0141dcf9ad"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-234505-a9444dc/threedoors-a-linux-amd64"
    sha256 "ce738d1888a3e3897495d43b1e1917e82cb7c87b3a34b0a759701bb74bf0fcd5"
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
