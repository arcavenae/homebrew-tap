class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.034108.77dd24f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-034108-77dd24f/threedoors-a-darwin-arm64"
    sha256 "8a3d81fe153a077032439c47229af8b334ca4977e63b74e3e9ff9e2d9e2a51da"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-034108-77dd24f/threedoors-a-darwin-amd64"
    sha256 "242748f9dc874c8991cc670d4a0092a9529cb7278758e113307659b4d254c81c"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-034108-77dd24f/threedoors-a-linux-amd64"
    sha256 "45ca4fd70ea7cf6d91813f99f66ee08272aa23bbd56961188dd5c12de6ca7d08"
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
