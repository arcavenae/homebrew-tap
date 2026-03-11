class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.234038.e40e50c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-234038-e40e50c/threedoors-a-darwin-arm64"
    sha256 "e4e3803a3c65ebffda47e97d0519f6fab4a3675f9ac9e96c99c59fe070d7bb0f"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-234038-e40e50c/threedoors-a-darwin-amd64"
    sha256 "a34c8d94714ec414c769259fc2e69ffbb1e572188c808b95c3c7eadd5cf73cf1"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-234038-e40e50c/threedoors-a-linux-amd64"
    sha256 "42bcd073d4a3f0af246925d472e314930792cd06f81454a5747df47a649e7797"
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
