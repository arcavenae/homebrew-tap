class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.baabcd7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-baabcd7/threedoors-a-darwin-arm64"
    sha256 "7234c3ead9e7456bfb5e7d955c81d5e3fc4ef88255b1c53605c43effd01daa27"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-baabcd7/threedoors-a-darwin-amd64"
    sha256 "2f60af508f5fbf1b9d5a209a206c065dc63f855e003ef684a4771b8caf0f5354"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-baabcd7/threedoors-a-linux-amd64"
    sha256 "fcd07e990089f7b5f0f78abda10add189448a95391a24c8d9fd99ea07a503b9a"
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
