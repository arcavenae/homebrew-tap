class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260318.070343.9213c25"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260318-070343-9213c25/threedoors-a-darwin-arm64"
    sha256 "7b0e9b4f149eb08eff85c44330ad4616ac00341bc66e3b87310e51b77da19faa"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260318-070343-9213c25/threedoors-a-darwin-amd64"
    sha256 "101444bf44c0afb041d821c2adeaa017b151319806626949475c29be6fd434b6"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260318-070343-9213c25/threedoors-a-linux-amd64"
    sha256 "b14095aec1abe547dea3c8fb6b791015c9cd8838e1f25a29b4f79c7b9f301f4a"
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
