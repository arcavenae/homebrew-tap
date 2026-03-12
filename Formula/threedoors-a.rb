class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.030102.d6b1648"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-030102-d6b1648/threedoors-a-darwin-arm64"
    sha256 "8c0c6b9ed01764f3e22296c6252629d3908d2bd4217cf518e5df01fb9f41495d"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-030102-d6b1648/threedoors-a-darwin-amd64"
    sha256 "5398da79f597889945edd30c71329f55b841b0e39a16acb862e57e62129c3ba6"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-030102-d6b1648/threedoors-a-linux-amd64"
    sha256 "850ef95e8123f11168d1be19396cdb28a368c2038a5e5e236e8224b403c73575"
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
