class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.c7d7314"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-c7d7314/threedoors-a-darwin-arm64"
    sha256 "cb29ad10d5d33805c560476351f2a506546ee2c21ca4293d26774392e081a848"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-c7d7314/threedoors-a-darwin-amd64"
    sha256 "940e8c6d3a484d2244601d4f6ec688eb0813114f55862714403cb2e5d6cb4c85"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-c7d7314/threedoors-a-linux-amd64"
    sha256 "b1d6159cc55d59278b3eff3c203739e52155eb1930a262470d97a4fcd8662cff"
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
