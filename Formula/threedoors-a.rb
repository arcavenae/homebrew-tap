class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.d23d082"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-d23d082/threedoors-a-darwin-arm64"
    sha256 "f283a0c03d1783cf5966e67754ee939ef7370cd85eff075264687a3ed922f470"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-d23d082/threedoors-a-darwin-amd64"
    sha256 "e16ed6ad30f70e0290769e2c5d8623c231f27dcceaaa5112cf5f709b425cee7f"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-d23d082/threedoors-a-linux-amd64"
    sha256 "abcd1897c90da12767cd309a6ca48d215678ac99e98dbfd98c87f123b9c903da"
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
