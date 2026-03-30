class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.031132.02b7788"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-031132-02b7788/threedoors-a-darwin-arm64"
    sha256 "849e1c3dabd4655916589dfbb6714ceaba19c5dd2355171cb468fcd195719383"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-031132-02b7788/threedoors-a-darwin-amd64"
    sha256 "6e18b8f60091979beb4d71fb9f22622e79b62b804f69462e958c4a53e12c7b3f"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-031132-02b7788/threedoors-a-linux-amd64"
    sha256 "fe4a412a898a9f640b9f57050643960d9f18028469947133ee0112c91fd35c29"
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
