class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.221319.80b6e8d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-221319-80b6e8d/threedoors-a-darwin-arm64"
    sha256 "fb851d6a7c18e8341a362eff0a0b30fc36c0860a89d46ae2a1ea8c027f8707ed"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-221319-80b6e8d/threedoors-a-darwin-amd64"
    sha256 "5c5db56f0c6d24c15aa3b83474083fc28a3762bdf3edb9e8347c21465f4d6541"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-221319-80b6e8d/threedoors-a-linux-amd64"
    sha256 "5a9dbfe9109d9fe2ca834c97f59dff57afd6f15680d7f2eab17fc8d049fd9549"
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
