class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.192421.b504682"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-192421-b504682/threedoors-a-darwin-arm64"
    sha256 "28b219db2ad2f1b3b3cb9cb7841bedab8a639c2626ed2f43bb78c0ce12c4f6b1"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-192421-b504682/threedoors-a-darwin-amd64"
    sha256 "52edfd91983343de19704ccb4f5e2a5ed2290508d5fd8a545d2b8d778aa8e294"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-192421-b504682/threedoors-a-linux-amd64"
    sha256 "ff66f40f9b5bddb8269e995347533c88d01497ef85ed1ad37c9d76c3ead2e436"
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
