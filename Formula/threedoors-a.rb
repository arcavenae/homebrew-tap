class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.4866689"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-4866689/threedoors-a-darwin-arm64"
    sha256 "bba46bd2d0cad10ef263859842f9f1ff2ed5d3a0e4fd224f6c38b64f63c932d3"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-4866689/threedoors-a-darwin-amd64"
    sha256 "6015cc7db5e56a2338100226f24585ebb9fbd3eaf52dcec23c0739b1ac907fab"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-4866689/threedoors-a-linux-amd64"
    sha256 "a47cd6f530979119937ea3cb5470eb24dfb4dfc92666e4dfaa0e9002cd9d9805"
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
