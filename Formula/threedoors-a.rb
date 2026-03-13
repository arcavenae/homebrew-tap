class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.172228.cf719f4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-172228-cf719f4/threedoors-a-darwin-arm64"
    sha256 "9835788a4c899826169faa3b071ddd91d584a1686e750572daa783b3d758d55a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-172228-cf719f4/threedoors-a-darwin-amd64"
    sha256 "dbd68ed413f5432c6539f958657c5b6d02a78fdaa0ec8eca8e770cd9fde52962"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-172228-cf719f4/threedoors-a-linux-amd64"
    sha256 "da7b072fce6a7d772ac9c4ce68294611177212a41d923b7e365d149093c67ce1"
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
