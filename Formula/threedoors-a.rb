class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260319.014004.10609c7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260319-014004-10609c7/threedoors-a-darwin-arm64"
    sha256 "4d0ad84ae21ee1a7854da057d180e5d46d7ae6902755ceef44022c281fac0ce3"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260319-014004-10609c7/threedoors-a-darwin-amd64"
    sha256 "a0c226aad4ff2e13d87b0fc71fd68b86ca084bcbd379a51f8186ce02d8f3a7e1"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260319-014004-10609c7/threedoors-a-linux-amd64"
    sha256 "a2264a1859817c7e0bd579ff5d70db321d726d06320ba97ac0a346d7d9e4d35d"
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
