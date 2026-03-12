class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.182100.23f9e4d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182100-23f9e4d/threedoors-a-darwin-arm64"
    sha256 "9ba3923cb21ea6c5341254b0c88335a330d0850ab6dcc05d681a1a55f4a6967a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182100-23f9e4d/threedoors-a-darwin-amd64"
    sha256 "f3b4f11462ab3edf8bf3c8ed9dc4bc5bb049b64b6e30592420b447ad93adf9ca"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182100-23f9e4d/threedoors-a-linux-amd64"
    sha256 "2857fe60f96b7c2b08c8b6c079482fc3e0ae89bf338347242f5e40b1d1799521"
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
