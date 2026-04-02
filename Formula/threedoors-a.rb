class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260402.234152.7de6907"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260402-234152-7de6907/threedoors-a-darwin-arm64"
    sha256 "cb86e7b0a1ea1faf15c81aa4a72f5d93c0bfeb974238b7514af83fc3f0661955"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260402-234152-7de6907/threedoors-a-darwin-amd64"
    sha256 "670db74b8ef66468ae5f1bdf7f81678a412dd3cdf7832407937f04c9642bc171"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260402-234152-7de6907/threedoors-a-linux-amd64"
    sha256 "3943b1d03c6b1c6505f5ed5d82e8fb7599c29c62b759b98edf23458a20b79510"
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
