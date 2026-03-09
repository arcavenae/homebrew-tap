class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.9f9e45f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-9f9e45f/threedoors-a-darwin-arm64"
    sha256 "92a9bb57af460b1d06fdd723c8471ea84fc29323576f959c459f444bc312674a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-9f9e45f/threedoors-a-darwin-amd64"
    sha256 "16de0ee14086b1e983fdbfaf86b8a550d741174a3fa872919923ebced0306ea9"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-9f9e45f/threedoors-a-linux-amd64"
    sha256 "d138e41a47cbaa2944d9b39d8b434675e8af7e70f04c87c2fe24ba65d90dca03"
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
