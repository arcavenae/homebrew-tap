class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.204713.faabff0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-204713-faabff0/threedoors-a-darwin-arm64"
    sha256 "bd0cb9cde1a1eb01ca216f997ef918af7f4220853edef13addc2f1afc8636f4c"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-204713-faabff0/threedoors-a-darwin-amd64"
    sha256 "ba19a73002fc0469f3bbf28369500b00b234da060a85add29506a7258110f5be"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-204713-faabff0/threedoors-a-linux-amd64"
    sha256 "5346e4c739863cc11c7c2987d6ee3c5a17a1dc706c3d946415c31e972884ae4c"
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
