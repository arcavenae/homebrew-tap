class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.208fbe2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-208fbe2/threedoors-a-darwin-arm64"
    sha256 "3747c65794e5eacb488b40c8907838df4237ba15f11a257981c5186425046ad5"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-208fbe2/threedoors-a-darwin-amd64"
    sha256 "cbc5750a147f1520f20fd15e7f81e68dac0ddbcbd0a71b3c16760cf77c5c5ff0"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-208fbe2/threedoors-a-linux-amd64"
    sha256 "91c44eec160c6f49ec85ac61b35fea60c2016ff2c5df381b9d9ffd841f6c3436"
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
