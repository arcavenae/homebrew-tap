class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.c7ace4b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-c7ace4b/threedoors-a-darwin-arm64"
    sha256 "f188d5aca85f44e9fa44f7f0d3481dd9f461bb8e0e6e1d424409546907d52842"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-c7ace4b/threedoors-a-darwin-amd64"
    sha256 "500188c070d5731701c2e90cdb4f0d319d57e1ce3296961418db3857a96ff649"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-c7ace4b/threedoors-a-linux-amd64"
    sha256 "0e4cb9b5571075e1d8cc7f79d0b4c598ef717037cf4e785ddf3dcfbe58483b88"
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
