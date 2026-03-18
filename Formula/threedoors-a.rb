class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260318.071244.5d9e69e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260318-071244-5d9e69e/threedoors-a-darwin-arm64"
    sha256 "ce290d08039fcf4e70cc4b4036f0a3dd170578247eb8d9f095cdc5981f07abf7"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260318-071244-5d9e69e/threedoors-a-darwin-amd64"
    sha256 "38bf207384875dfb0ccef21cf6f677e9c3bbea5808938c3322cad9c342c16efb"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260318-071244-5d9e69e/threedoors-a-linux-amd64"
    sha256 "2f8c26d0e1f32ae193bdc7ee3a4d39260b7315042e1c79763f337b87cfcc61f8"
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
