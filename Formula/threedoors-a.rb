class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260316.021032.3a78a1e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260316-021032-3a78a1e/threedoors-a-darwin-arm64"
    sha256 "88d831d7f52ae9a27e73a4b00cbb8b86594ce392646de54efce63a9c3eb1837a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260316-021032-3a78a1e/threedoors-a-darwin-amd64"
    sha256 "383e7cc502961e4edc4a7adaa7931769623bb261cfef5b3ca4b2c2c256a19713"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260316-021032-3a78a1e/threedoors-a-linux-amd64"
    sha256 "4fb88983d56c9869c52618ea25116ab9e7f83c46aa08d5e4e2bb8902cd12b7b1"
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
