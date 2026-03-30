class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.055229.7fd54c7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055229-7fd54c7/threedoors-a-darwin-arm64"
    sha256 "ebeede8cd2a15f528d4a26f6a213f79a7b250b3acd12dca25cd1a09fc6ae5b0a"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055229-7fd54c7/threedoors-a-darwin-amd64"
    sha256 "d21a19ec05f3ff41fe49c5261ad09ef5b2bd5d23800580862ff93d70a2114607"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055229-7fd54c7/threedoors-a-linux-amd64"
    sha256 "f3db9a57c193d46f96b27fa73a92f8d0425cfdb6646a65412938135c17cf2ab8"
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
