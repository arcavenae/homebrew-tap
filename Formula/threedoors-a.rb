class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.181847.2e781f7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-181847-2e781f7/threedoors-a-darwin-arm64"
    sha256 "4a7d2cc3fdb6e3198c425de75e23c634bff89056b92a5bbd1caeab5970c52c14"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-181847-2e781f7/threedoors-a-darwin-amd64"
    sha256 "257be6fdc8ecc085992ba2a9bcadd4e224e07489d0c80c724a14fb11271dc847"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-181847-2e781f7/threedoors-a-linux-amd64"
    sha256 "0b433a0c7335abb62ac232140f10547b8f2a1db0ece05180886386535eadb10f"
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
