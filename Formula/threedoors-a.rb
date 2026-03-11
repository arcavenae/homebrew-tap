class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.20eef8f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-20eef8f/threedoors-a-darwin-arm64"
    sha256 "7e106f7b3a3728ebe90564a5489c737f27490649886072d1a2f251dbe334d51d"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-20eef8f/threedoors-a-darwin-amd64"
    sha256 "47dce210765e02043e692457a762d9f077c0ecb9d03d6251b77d4d871ffa20dd"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-20eef8f/threedoors-a-linux-amd64"
    sha256 "c739f22a226505932e648367c6327bc44a218d8e9e42d36c0aa9b8249e1ee2e9"
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
