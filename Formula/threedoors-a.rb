class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.214954.e2d2b38"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-214954-e2d2b38/threedoors-a-darwin-arm64"
    sha256 "edf34861baadbd6e5f9411259e1d7a621dfa740cf6f999caabd1a838328f647f"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-214954-e2d2b38/threedoors-a-darwin-amd64"
    sha256 "5a375702ab641360d3e8785cfbfb45cd930465c6b44d0676f95379315bd5a610"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-214954-e2d2b38/threedoors-a-linux-amd64"
    sha256 "fe39bd9f2c144315e3cde8f2424afcca202568740dbfb4dcd04642720df6af73"
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
