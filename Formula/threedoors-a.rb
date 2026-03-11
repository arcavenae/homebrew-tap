class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.8c4ece7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-8c4ece7/threedoors-a-darwin-arm64"
    sha256 "535d357bad680d66a1ac0b11b959e94b7d62f452fb840539544e99ef52b7887b"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-8c4ece7/threedoors-a-darwin-amd64"
    sha256 "41308fb4ca797bfb3cf3bbd2786592a73c4d327d35d77c3a1d38a247de88de82"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-8c4ece7/threedoors-a-linux-amd64"
    sha256 "162a7f02d38664b27145ef22b83549d646315ccf7729fbee19766f7631bffa3c"
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
