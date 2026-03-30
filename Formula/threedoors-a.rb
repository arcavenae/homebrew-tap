class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.055648.f606592"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055648-f606592/threedoors-a-darwin-arm64"
    sha256 "94b6a64a602df48ade846bf693b42b8d07159d01bb52667cbe7874e228cceced"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055648-f606592/threedoors-a-darwin-amd64"
    sha256 "db6c396228a9ce9d139c422cc964a1918610ce544d5714a9e315ecde41ea8936"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055648-f606592/threedoors-a-linux-amd64"
    sha256 "6bf604a9091441f79a7974ee143a4b7a198100f2ca1ef7defa743d98be9d79ec"
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
