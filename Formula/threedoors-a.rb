class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.aedb04e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-aedb04e/threedoors-a-darwin-arm64"
    sha256 "f4e1e44e3fcffb69c54935821c4cb7c7452edaa3a5c87b5310a22a13cdc2fd07"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-aedb04e/threedoors-a-darwin-amd64"
    sha256 "4f95f7102f55d70507fddff33143214fb24956375c363ed78863d89e8aff74ea"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-aedb04e/threedoors-a-linux-amd64"
    sha256 "c288cee448be58f849068158c374553a2fce20c21e2bb01507798b44a12ddde7"
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
