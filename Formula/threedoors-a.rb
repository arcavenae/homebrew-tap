class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.231949.32866be"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-231949-32866be/threedoors-a-darwin-arm64"
    sha256 "b9592bebe15afab2de9c9b0952888fbc84a376ff040db025668ef905a00a944e"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-231949-32866be/threedoors-a-darwin-amd64"
    sha256 "b6f5d028849bee1e65327bde3cd139beeda161516f176fb3c5da2650beaab743"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-231949-32866be/threedoors-a-linux-amd64"
    sha256 "a091a6dc1c8933b705385fc556d871c6163b7adc48a43105f9c59f337256ae17"
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
