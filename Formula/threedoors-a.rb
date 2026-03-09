class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.75a8373"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-75a8373/threedoors-a-darwin-arm64"
    sha256 "d356c884bf97dcdadbe3ac78e2eb930d1c64049a6f9b51577298e0b84213a4cc"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-75a8373/threedoors-a-darwin-amd64"
    sha256 "8626701b393cb70208aec46f06f666e88e461de9e0424fe92688beac2dd673da"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-75a8373/threedoors-a-linux-amd64"
    sha256 "c8c163614a8d9c7d8bbfa45444a2da77067a783e0f832c5cc3bd7e2a9dadc11a"
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
