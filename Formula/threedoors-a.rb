class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.503aeef"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-503aeef/threedoors-a-darwin-arm64"
    sha256 "620b9f433f87d81817a7ab5faccf89f50b179025d3d0d2d5793f85bfef896733"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-503aeef/threedoors-a-darwin-amd64"
    sha256 "0c819c4b559da2d57689e195c7df197506d0c76905aece269158c8f363ac1d76"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-503aeef/threedoors-a-linux-amd64"
    sha256 "ecefc58dbcdc8ac76e18506a2a102715dcb4c5641fe639e836d2c1579d3ee633"
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
