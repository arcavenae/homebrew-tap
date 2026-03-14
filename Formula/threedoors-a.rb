class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260314.001510.f4b2022"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260314-001510-f4b2022/threedoors-a-darwin-arm64"
    sha256 "ef0d53f0649d4675ebc24c37539dff5171cf6070448560414d94ccb70e8ab0f6"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260314-001510-f4b2022/threedoors-a-darwin-amd64"
    sha256 "182aab7ea18e49cba425a3ffb252af76fb9feb4f55e108bea04a9486ce2774ea"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260314-001510-f4b2022/threedoors-a-linux-amd64"
    sha256 "3effb38ac740ba9a21aeba1a5afdff1e6f752ea149cf5df466bd3039d6ebe28f"
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
