class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.2320161"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-2320161/threedoors-a-darwin-arm64"
    sha256 "addb3db338eb0ccd8520fe625cc7c7ebcb3a85b0863d7fe2d04826919542011a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-2320161/threedoors-a-darwin-amd64"
    sha256 "7899332159b8f8737ce09612e24bee0a1f2c93e2049385e17e344a1df20b7d9e"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-2320161/threedoors-a-linux-amd64"
    sha256 "5a157d983cbef15c68c51f8e859a024f976084892b818a48fd9138c850b71b3d"
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
