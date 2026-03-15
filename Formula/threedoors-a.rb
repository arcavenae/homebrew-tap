class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.181652.51970e9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-181652-51970e9/threedoors-a-darwin-arm64"
    sha256 "bf67aa732aeaee036f85c8f0802f7de650307654ea3d4d8bc285f9507a52367c"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-181652-51970e9/threedoors-a-darwin-amd64"
    sha256 "6beb9e90c2f9a86cc739424214bcec5f04879d10f07764b214dbe19e2934b725"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-181652-51970e9/threedoors-a-linux-amd64"
    sha256 "883a2a29cb9ad440cbe8b0ba6e6128f04bf44cdbb874a7fe82a09c112374ec4d"
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
