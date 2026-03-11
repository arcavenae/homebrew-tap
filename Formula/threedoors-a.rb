class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.971c212"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-971c212/threedoors-a-darwin-arm64"
    sha256 "f875af1315a0f3ebc3c561c47f5910aa00bc5b50ef47baf3a13f75106dd1980d"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-971c212/threedoors-a-darwin-amd64"
    sha256 "46cfd210b6c229e62992600922599f96299c8f7eed967d3793e299ccbe461351"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-971c212/threedoors-a-linux-amd64"
    sha256 "14e7ffe14685ade17001a4f8bf5209e95e8568896501b02784e779cd48197be6"
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
