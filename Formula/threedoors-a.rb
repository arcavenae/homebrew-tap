class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.225724.cecfd81"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-225724-cecfd81/threedoors-a-darwin-arm64"
    sha256 "e9a767073eac50829f6b7cd072fc75d30c3266569d2def715b546fbd2b28b41c"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-225724-cecfd81/threedoors-a-darwin-amd64"
    sha256 "f3199a1381432d8aa95146b9c79b0f5a1c4a49b90a7587e826544c3a20da6f7b"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-225724-cecfd81/threedoors-a-linux-amd64"
    sha256 "fb8a8215d7e7630172cc258c95bf81968f1840f2e0ab556e433b2a8c6a48eddd"
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
