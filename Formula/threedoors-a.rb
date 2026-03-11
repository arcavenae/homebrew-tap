class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.b9823b2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-b9823b2/threedoors-a-darwin-arm64"
    sha256 "1ee483a7344ae716d39a4e1b02d058a7835b1095a408f1dd60bb81a774d74273"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-b9823b2/threedoors-a-darwin-amd64"
    sha256 "e416dce4ea2a8161e3b67dd77d9f997b87720d8b17c73fdf3f9ef609f0b40c57"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-b9823b2/threedoors-a-linux-amd64"
    sha256 "6dd9f3dd0970d2e5744018ea277a00de60ec9e8973ac9f3feb741f3784a69270"
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
