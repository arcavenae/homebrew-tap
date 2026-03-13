class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.043104.9b70c4f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-043104-9b70c4f/threedoors-a-darwin-arm64"
    sha256 "99c813b1c7799065dae1f23898cf452e77fee2b4961751a0429ef5194303d85f"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-043104-9b70c4f/threedoors-a-darwin-amd64"
    sha256 "3d8bcb9cd4f6ecec28e0f8879f6e2e71334b0e5b4e9fe1451648adcf81f68d48"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-043104-9b70c4f/threedoors-a-linux-amd64"
    sha256 "4a69c6dc619ac88eb87d48549ffa2444a9dedd53dc5fc52e1505e2fd2e11dc9e"
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
