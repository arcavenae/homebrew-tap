class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.231614.dca079f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-231614-dca079f/threedoors-a-darwin-arm64"
    sha256 "ec931dff51ef8f8679444a5d33d31492ecbf611a02de272d299d6b8bc2e7c761"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-231614-dca079f/threedoors-a-darwin-amd64"
    sha256 "42981b7724c4d5d88b15dfc31110fcfd1c8e6055031d0407fb248570a6074b31"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-231614-dca079f/threedoors-a-linux-amd64"
    sha256 "764b194bd34c811e95b49640315398cb2c1e57d16e52054f8053bc545068a984"
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
