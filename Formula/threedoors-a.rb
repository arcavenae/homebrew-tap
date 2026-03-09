class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.603b584"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-603b584/threedoors-a-darwin-arm64"
    sha256 "19bef11b7e4057c5a587dcffc4901f9a9d27a7809992734e55751f88b7455af1"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-603b584/threedoors-a-darwin-amd64"
    sha256 "cadb7bdb6d74a13ec868745bce8489b669ef2356580f4f1d07e0ac71a6c1b3af"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-603b584/threedoors-a-linux-amd64"
    sha256 "3f3f4e9fdad518d0d6b5a9d46e260c600ebf01e0d996978cb95bdc7077cd4fac"
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
