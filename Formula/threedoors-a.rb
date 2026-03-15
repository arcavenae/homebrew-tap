class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.193425.eee2e90"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-193425-eee2e90/threedoors-a-darwin-arm64"
    sha256 "f093d6e13058ce3a0aa07adf76496b9797df1c89e2ff49fdf1735101f74aead4"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-193425-eee2e90/threedoors-a-darwin-amd64"
    sha256 "5c921e730bb082e9e4d23887adf245458b7012862d248f790ffc4f4f2a44d3ec"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-193425-eee2e90/threedoors-a-linux-amd64"
    sha256 "c6bae2b4876db8fd020e23d05cf321f53430b47da6cbfa582f31a9466aeff6bf"
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
