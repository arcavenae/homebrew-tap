class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.060610.6942262"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-060610-6942262/threedoors-a-darwin-arm64"
    sha256 "fd0641edb8cf84efde25fe3dd8a0db419488cd81b7cfcdd15b1d607c1e3ab2b0"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-060610-6942262/threedoors-a-darwin-amd64"
    sha256 "3f45ca69e3a55b8831e52b3068eb8ffb625c7631cff5758964bcd663e7137e6b"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-060610-6942262/threedoors-a-linux-amd64"
    sha256 "7604ca81aa20d4a19c5e46c52567bf5bbd163b21f4952f748614486f7235056f"
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
