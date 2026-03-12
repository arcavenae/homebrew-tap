class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.014505.312d91e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-014505-312d91e/threedoors-a-darwin-arm64"
    sha256 "7069e42154e251581b59d214fb57c5b5bf26736cf31ff2e84c99728b1970ce33"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-014505-312d91e/threedoors-a-darwin-amd64"
    sha256 "cc3d31e8124155fe8c2e0f5845d7b59986cd66dee811896c894e73892c52056c"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-014505-312d91e/threedoors-a-linux-amd64"
    sha256 "faca823edcf096efd966c88b65a2102de0ff0b6b7aabc68435ca3bfcd71687eb"
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
