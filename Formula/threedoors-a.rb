class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.c23232a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-c23232a/threedoors-a-darwin-arm64"
    sha256 "143febcb3891f0adb2f778a81674b2220f032e735004f6379bba9e9ffaaa85f3"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-c23232a/threedoors-a-darwin-amd64"
    sha256 "b34e3ad4e752c7eed0c6c9062110efe2ae0cbb0f91cee300d5bf90d828a91ac9"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-c23232a/threedoors-a-linux-amd64"
    sha256 "416c3bec7bcff21dce376a81b8ff82f5c2384453ff29c4d5e55c976272fd47b3"
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
