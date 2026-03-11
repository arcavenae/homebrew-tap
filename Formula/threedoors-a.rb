class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260310.f3f4b79"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260310-f3f4b79/threedoors-a-darwin-arm64"
    sha256 "ecc2002793303d5a5ed284c88c3c421d6bf6feff8d2650509b30b253799b1083"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260310-f3f4b79/threedoors-a-darwin-amd64"
    sha256 "65cc4f829f1037ae752d86ac757ed16090e6d4fe5e6b41cbfa76f456beba8456"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260310-f3f4b79/threedoors-a-linux-amd64"
    sha256 "05e2d95fc89d3b85c7d666497580bcfee55263e18ce443cf3488b30bb2bd6ad8"
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
