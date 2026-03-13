class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.203322.fed5446"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-203322-fed5446/threedoors-a-darwin-arm64"
    sha256 "a2a5b098ffea859030889e800e22f6ef4c9d1a0e52eb0e9df948c07ebe95ac12"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-203322-fed5446/threedoors-a-darwin-amd64"
    sha256 "d1f56d7fc31460419a6e2b7ba85cd899869ca6fb856d6c9f62a734ed3a877d91"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-203322-fed5446/threedoors-a-linux-amd64"
    sha256 "0f02c8e1fc420c6411eb0b6fedbc5d06b7d49ceee7d0c009f5c07dfccc04f8eb"
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
