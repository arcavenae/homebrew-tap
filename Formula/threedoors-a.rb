class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.5f467df"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-5f467df/threedoors-a-darwin-arm64"
    sha256 "f0cf4de9cf064205905994461061c9d1b6e52673540198d44a3568a19672f3d1"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-5f467df/threedoors-a-darwin-amd64"
    sha256 "0d90375a67405476240da0cd9accb262d75fe3f4dd1ef37da56445d0124fbcc9"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-5f467df/threedoors-a-linux-amd64"
    sha256 "58741fc109fba08c195533e29f418233cf482449383d7022c2f8ec3604469b22"
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
