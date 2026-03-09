class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.6ae450a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-6ae450a/threedoors-a-darwin-arm64"
    sha256 "2743e0b6c49aa1b399c3f2f8b45237060ecf9d826fca3a7ec007f30da7baf1ca"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-6ae450a/threedoors-a-darwin-amd64"
    sha256 "e1998f529cfde403d855d81de0aeb3b03979d6b463cee5405f4dc00483c747ae"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-6ae450a/threedoors-a-linux-amd64"
    sha256 "e0e40f6dbe09cab766abf674e0be2e2e510519ae1ba424a546e43dbaa636e4e4"
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
