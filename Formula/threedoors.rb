class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.aef3206"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-aef3206/threedoors-darwin-arm64"
    sha256 "2b9a4e30e65314146e570f52cd0100f9f84301f0daf54f39a3febf0055f0d463"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-aef3206/threedoors-darwin-amd64"
    sha256 "55a998bd68f6178dc0730b312a011bca44111e022dbe7063de75c6d1f5d5f268"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
