class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.222250.a846782"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-222250-a846782/threedoors-a-darwin-arm64"
    sha256 "5990516a82043dcf6f35c0bee00285bf9816893e8706b32450e4d1d169241841"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-222250-a846782/threedoors-a-darwin-amd64"
    sha256 "223175218d9fcb6dbc5ac27e3c5e2dd9917a8340dae01c2ff4e63444b6ee74d7"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-222250-a846782/threedoors-a-linux-amd64"
    sha256 "dcdcfa246fd236537f7bdff0c7c634182d5b36dbf25d4cabb56b7cc3f3f6dab8"
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
