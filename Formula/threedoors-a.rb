class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.195635.b443a96"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-195636-b443a96/threedoors-a-darwin-arm64"
    sha256 "29ee2a69da6ec86b7d10c03710b3ef617665f88c29ddddae9de3d47240016f68"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-195636-b443a96/threedoors-a-darwin-amd64"
    sha256 "ad9652ae4462aa7ac6264040b4f6fa01753588b39ed80ca83350f794ff26e933"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-195636-b443a96/threedoors-a-linux-amd64"
    sha256 "aee0d7e3fa97277ee760a890234669a52ed4be744b192787ede9384dd69d9d94"
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
