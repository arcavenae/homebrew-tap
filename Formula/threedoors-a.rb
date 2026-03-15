class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.182710.cbea26e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-182710-cbea26e/threedoors-a-darwin-arm64"
    sha256 "14e15a1d9f7983111d03e863bbe1c135c4504bef6185c39e64eb754c3a5c220e"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-182710-cbea26e/threedoors-a-darwin-amd64"
    sha256 "d31ed058a241b45be2c59b1a00c6dcbeaae9a7dbe38e05bb184d77cb272b7024"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-182710-cbea26e/threedoors-a-linux-amd64"
    sha256 "089c51ec951237257b774b87365cdf5026fa6a148e6fdd957a81fc199716e6e7"
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
