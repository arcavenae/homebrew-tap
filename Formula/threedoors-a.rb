class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.065422.5dd7c14"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-065422-5dd7c14/threedoors-a-darwin-arm64"
    sha256 "b992dbbbc3de1af9cbb78af092b4643467d80f514ef8ad34d289ab2c67816a46"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-065422-5dd7c14/threedoors-a-darwin-amd64"
    sha256 "1826a0a84932ab69dbd32063f5c5c5f9fc04edd817c08f7257ad9936fcfe6c6b"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-065422-5dd7c14/threedoors-a-linux-amd64"
    sha256 "e9c14519de1671616aadcc237a14d06fff4fc71df1baf705c7f92d77d03550cb"
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
