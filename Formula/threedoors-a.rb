class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.010443.0dba643"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-010443-0dba643/threedoors-a-darwin-arm64"
    sha256 "6606467ed7be71c2521653482bbb579868b59c134cdbe0b35df9f6107ec5976c"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-010443-0dba643/threedoors-a-darwin-amd64"
    sha256 "5ecca7042f73080ac1a91c7450138563af1b65c38572fb84fff94855d8ff3b5a"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-010443-0dba643/threedoors-a-linux-amd64"
    sha256 "8479cd53182b6e46b2f84cec397ab36218e38f29b4c3f261ffd5debe70e87294"
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
