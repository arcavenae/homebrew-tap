class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.005929.5631c84"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-005929-5631c84/threedoors-a-darwin-arm64"
    sha256 "cd89ae71611822cca786ce6e10270a368162993fc83d899f634a834e3ab8eba3"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-005929-5631c84/threedoors-a-darwin-amd64"
    sha256 "eac7be603818d7003a997e2b2c90b526ad75d1b59f6444cae3cad0b3197f18c2"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-005929-5631c84/threedoors-a-linux-amd64"
    sha256 "fdb0abd9b68dcd2262fe87c5b49725f9cdd8cfa802947e4d15f38a8cf8bb5d51"
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
