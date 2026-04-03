class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260403.005935.23fce76"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260403-005935-23fce76/threedoors-a-darwin-arm64"
    sha256 "04f606b739e73d568da08ad2a898bb6fa714983ce1912e1f23fadf32188c73c1"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260403-005935-23fce76/threedoors-a-darwin-amd64"
    sha256 "6a4763fd695ac79fd5ab4d610f9269eb80b196bae9fd59bbb428f89f68b22997"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260403-005935-23fce76/threedoors-a-linux-amd64"
    sha256 "34f0f526b8a8efaad13f1d60b448ad914be6b7d1591bffe24e6e443ce9ad798c"
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
