class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.193420.ed33b87"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-193420-ed33b87/threedoors-a-darwin-arm64"
    sha256 "aca8406092b8cbbfaca7f65cd30b94478cfa7170084d9ffe53ea282bed78a561"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-193420-ed33b87/threedoors-a-darwin-amd64"
    sha256 "5cfeeec3c8fec7535f367c80882427f86ca8ac80de01365ecabcc1ff49e9cca4"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-193420-ed33b87/threedoors-a-linux-amd64"
    sha256 "b3ab746712d79296209e5213bb209a44a7ea255ddfa2055e892ed0d130210766"
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
