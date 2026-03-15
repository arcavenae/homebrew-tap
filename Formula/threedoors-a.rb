class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.211645.a4f72dd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-211645-a4f72dd/threedoors-a-darwin-arm64"
    sha256 "58888537cd95e5b79ab2f731a44a238d9ae269f8bb6d14206a569929494ed064"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-211645-a4f72dd/threedoors-a-darwin-amd64"
    sha256 "72c7ca8a5d5f0f5b6735891922879b428c452594b640fc52aa82d676ac46997d"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-211645-a4f72dd/threedoors-a-linux-amd64"
    sha256 "bca9296bdcd439fa20080bcfda718374ebf779c6f420c36da6b4e955f778a541"
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
