class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.223317.ab51fbb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-223317-ab51fbb/threedoors-a-darwin-arm64"
    sha256 "e380cc25d41fa9e956e5be31870da01adec74a11edee12014ba16fa0866fa11c"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-223317-ab51fbb/threedoors-a-darwin-amd64"
    sha256 "ac0593bb2a67787c635ddaf06a3bec5ce7d58dda21aca3df1d8784cd6d3eee2e"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-223317-ab51fbb/threedoors-a-linux-amd64"
    sha256 "aaab885a68cc1be33f67cd866c87add659754b7fa0a5050e331a9b1e0bb0af0d"
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
