class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.233635.0d983c7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-233635-0d983c7/threedoors-a-darwin-arm64"
    sha256 "c80ad7401f718e97adfa1d37e9ef3109f8d78499ef34d7d55453c7cc8125f413"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-233635-0d983c7/threedoors-a-darwin-amd64"
    sha256 "f1efc981f8fb1f62bd1713030725024faa16311926a5c2ad9264f38c071b74d8"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-233635-0d983c7/threedoors-a-linux-amd64"
    sha256 "7251576cfce0bc75a57439f64a1b04b84f33e0e661584524668007f298d012b9"
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
