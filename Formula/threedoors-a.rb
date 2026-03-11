class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.4175841"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-4175841/threedoors-a-darwin-arm64"
    sha256 "b3a8d8282b7b9120a5363f501423fd892e1e0a2f899a135e3da4dc45dda558f8"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-4175841/threedoors-a-darwin-amd64"
    sha256 "c85ef6d36078fe2ad2318b602bd0685b984ab81e3d9578726eba5b85354da80b"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-4175841/threedoors-a-linux-amd64"
    sha256 "5c51c28a27163d99a6c68bbdcd99f24a61a33efdffa5dfcaa462c03594b89b37"
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
