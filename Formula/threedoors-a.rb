class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.5b40050"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-5b40050/threedoors-a-darwin-arm64"
    sha256 "d7f32252eb306a466e97e1bbed15436445e50fc9af6de7e7bba50682e0fef164"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-5b40050/threedoors-a-darwin-amd64"
    sha256 "0a93ba36c75678ec1a1308dc88149f5671ff03855d734e255eaada9d36ed3138"
  end

  on_linux do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-5b40050/threedoors-a-linux-amd64"
    sha256 "5c88e7214ce4d331d851785fe2e8cb33c82587f7578981c3ad1bc94167ba6dfb"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.mac?
      bin.install "threedoors-a-darwin-amd64" => "threedoors-a"
    else
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
