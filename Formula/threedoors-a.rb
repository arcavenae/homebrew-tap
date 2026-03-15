class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.220950.d3ea259"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-220950-d3ea259/threedoors-a-darwin-arm64"
    sha256 "8332f55c96cf640cd49eb0efcf2ccd7a7ade16c58d17f2af5ec69fcfc2ad4001"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-220950-d3ea259/threedoors-a-darwin-amd64"
    sha256 "d4e612a3ae844220153ce30389ae03689a1f364bf1c810a5369fe1ad1b11d6c7"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-220950-d3ea259/threedoors-a-linux-amd64"
    sha256 "28b55e648ff3e7a0fef1970f1f0912cdc61d05ae6b24dba765c7e63b826355f6"
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
