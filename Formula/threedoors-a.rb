class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.005116.24182c8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-005116-24182c8/threedoors-a-darwin-arm64"
    sha256 "3c263286f2fd3350857d37f5a613280f20d1d5855f9db40bcc2b37701e6c6e76"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-005116-24182c8/threedoors-a-darwin-amd64"
    sha256 "6d1391be973011c2293b2e35bdbf77eb386bceb2f7117ed78b1f29cd89d44e6f"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-005116-24182c8/threedoors-a-linux-amd64"
    sha256 "199d99137b8b99fd6017a6f990143de50121dc902191623301e0de9085f624ed"
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
