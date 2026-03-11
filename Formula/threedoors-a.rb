class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.b3b1ad3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-b3b1ad3/threedoors-a-darwin-arm64"
    sha256 "f238b52be14adc0a10255dd2d2ad229cafa320acb9f73f2b81441dba512fbdce"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-b3b1ad3/threedoors-a-darwin-amd64"
    sha256 "a75a9a08ac4f1000376175d715c371d3ddf7fdd188003649e570fd2a2e1e9cd9"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-b3b1ad3/threedoors-a-linux-amd64"
    sha256 "4509197b643e9e957f1d02103d126e07639aac9c8053742076244b188743a614"
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
