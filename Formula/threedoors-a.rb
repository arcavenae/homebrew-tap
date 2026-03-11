class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.221611.6ccc59b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-221611-6ccc59b/threedoors-a-darwin-arm64"
    sha256 "278c620e4fbfaa6663a58804ac8dcbacc4dd6f5d616847feeef43cbdcb534ef1"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-221611-6ccc59b/threedoors-a-darwin-amd64"
    sha256 "4aa8a68e586beb3dcac5e15d59f7eae130082405c2603ae7cc9d8c8c9e7c54b0"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-221611-6ccc59b/threedoors-a-linux-amd64"
    sha256 "f5a960b8f16238068f9552c759b94ebc6ec3e98a725b235f892fae716228cb42"
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
