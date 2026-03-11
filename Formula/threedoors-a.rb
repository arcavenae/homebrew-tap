class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.2afa3ac"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-2afa3ac/threedoors-a-darwin-arm64"
    sha256 "0ef8291721f0f8b5dc7145496c5ed8cbeb6b26b8d5f84f5f47b06e118cee1b00"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-2afa3ac/threedoors-a-darwin-amd64"
    sha256 "14996319f3dd630c4f2b22e230d7ef3de18b3febfe5ecb97fff090b146ce9469"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-2afa3ac/threedoors-a-linux-amd64"
    sha256 "5d163513d73d6bc02d6753717a98b3438e3f3f85690095eb3cb778a13b0c8b03"
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
