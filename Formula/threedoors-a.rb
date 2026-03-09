class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.011bb04"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-011bb04/threedoors-a-darwin-arm64"
    sha256 "11acde7461fd7ddbde5ceb4704d5cc422c226f3e91cf006c121cc745093d87f7"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-011bb04/threedoors-a-darwin-amd64"
    sha256 "db515814988112de3010338eb8588c054393b487680edac17038801da2965e8d"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-011bb04/threedoors-a-linux-amd64"
    sha256 "f241a4fc733796ac772ccefbbf3d665368ec45ccc57bb62c95d14be93340cca9"
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
