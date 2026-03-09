class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.cb3396d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-cb3396d/threedoors-a-darwin-arm64"
    sha256 "75447128c30a20d699001e30279bb71badfc7551e2139cd4398a132526ef5d0a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-cb3396d/threedoors-a-darwin-amd64"
    sha256 "cd234d5f94a8e54e0804c32f54d6cb3ff002ba3563ab2bdccf6e47832ba74dd2"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-cb3396d/threedoors-a-linux-amd64"
    sha256 "2e9417ea19f956ccaa4594d7a7ea1e22e17e31ed3a4a0e5a75314c8f2269a469"
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
