class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.56bd0ff"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-56bd0ff/threedoors-a-darwin-arm64"
    sha256 "f030ddc5cf62dafd3d5c677801bfba9e093b87aba5d0b4411b2c536b5adcd101"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-56bd0ff/threedoors-a-darwin-amd64"
    sha256 "cabc35e9704d622ce4fa0df25923e1afeb7d6aec61b4994894fa5b13cb8583f1"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-56bd0ff/threedoors-a-linux-amd64"
    sha256 "c47a2f4807a3fa71235899d3c1ecf1c7d6f51bee65bcb08685ee92442ea302db"
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
