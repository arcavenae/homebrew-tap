class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.df27b91"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-df27b91/threedoors-a-darwin-arm64"
    sha256 "4858627dd8d7ea04cbc0dbeb7909d0ade3e6a9de7b1518ca10660073462c6e4d"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-df27b91/threedoors-a-darwin-amd64"
    sha256 "c73d736fb62999c72b4dda7a273225ffbe3bdeacaa887ae8d6aeaa84cfcde70c"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-df27b91/threedoors-a-linux-amd64"
    sha256 "c3dc1645363450e4c7235b8d62e5e9d32095289f907914e927574d374802a459"
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
