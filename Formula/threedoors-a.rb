class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.2df687b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-2df687b/threedoors-a-darwin-arm64"
    sha256 "7a4c69a1e43ccdfff99be9e56c3f301a67f3f8ead093ef68c974239b44929df0"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-2df687b/threedoors-a-darwin-amd64"
    sha256 "b15a893a0c4efd47d39bcbd9dac2deef96e5105b4c3a562764a5b7b097099ce7"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-2df687b/threedoors-a-linux-amd64"
    sha256 "00df4ced20b855844573adebb53e1737e5853a143436754c68f583f3c6f6cf30"
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
