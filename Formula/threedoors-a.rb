class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.225448.82dab79"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-225448-82dab79/threedoors-a-darwin-arm64"
    sha256 "765c5cae97d304a8002bbb335b4a9dad63c0db02a0a50740b14089a239e0153a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-225448-82dab79/threedoors-a-darwin-amd64"
    sha256 "75a61ff16557b538e44c7a3741bd885edb05cedbdb673899222b750566cdfae4"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-225448-82dab79/threedoors-a-linux-amd64"
    sha256 "8bb8d978ea7e11b2d8b1a5855820a51f348e19b010920a74e2cdd3e995005509"
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
