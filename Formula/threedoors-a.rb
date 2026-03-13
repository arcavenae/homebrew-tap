class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.231515.f0830f4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-231515-f0830f4/threedoors-a-darwin-arm64"
    sha256 "91a99a8a70a87315f571c24786ea942088f67802b3bfaa9dc37b0a5912cfc085"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-231515-f0830f4/threedoors-a-darwin-amd64"
    sha256 "7d191f0c94c0304d7c71ce3b0abdc5d2a5eafcaa34a9301b4efd45bae4ca6bd4"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-231515-f0830f4/threedoors-a-linux-amd64"
    sha256 "b6d9479ce586a02dda69e876b24b54a7fca63aa90e67d2bff57a7c9e7c049b2d"
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
