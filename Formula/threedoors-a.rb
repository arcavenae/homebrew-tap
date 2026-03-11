class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.470e0f0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-470e0f0/threedoors-a-darwin-arm64"
    sha256 "d608a28922a31e9238935701028db00f3f1fe348063e80699bece0a3f44a10f8"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-470e0f0/threedoors-a-darwin-amd64"
    sha256 "e9a00f809010300084fa1a17887e7fa3b6b56b3984e33fc14b620975171b61f1"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-470e0f0/threedoors-a-linux-amd64"
    sha256 "5bd5ae95f73ac01bcc16adf17b959767c4c4bb6350abd502333969be1ea74de5"
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
