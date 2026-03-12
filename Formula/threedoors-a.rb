class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.220143.9baef63"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-220143-9baef63/threedoors-a-darwin-arm64"
    sha256 "843dd92bef61e16b1271b39de04415409b60767c52edf25875193ed2d1e3ee37"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-220143-9baef63/threedoors-a-darwin-amd64"
    sha256 "263727f70546d332ecff16b814b712d4b34560a12e4f759f34d55e7f67d2f90d"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-220143-9baef63/threedoors-a-linux-amd64"
    sha256 "500d8ebeb6e92920f25ab0f5455c185f9a7361a55355075fcbc4ced2bfb5cb30"
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
