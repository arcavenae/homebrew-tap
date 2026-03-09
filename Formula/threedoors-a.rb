class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.f4de003"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-f4de003/threedoors-a-darwin-arm64"
    sha256 "55af49873694477590e0e8bf4c2ab8f295006cde6dae55366652d54c9a04438a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-f4de003/threedoors-a-darwin-amd64"
    sha256 "8647d509844f0c542deb16b24c39d0b251a87296a3f609a87a09295135fba462"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-f4de003/threedoors-a-linux-amd64"
    sha256 "2bf09c8688e4651858d35f789b79ed8878cc3ee1dc1cf78e74e10cb775895ac1"
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
