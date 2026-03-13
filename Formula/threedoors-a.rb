class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.161455.3bf7036"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-161455-3bf7036/threedoors-a-darwin-arm64"
    sha256 "3d49c561771794fb9c53baf5b6b7a46f95ac23728c9838c6ad4230fdb7d92bff"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-161455-3bf7036/threedoors-a-darwin-amd64"
    sha256 "1fd3e987893e9230f5955ec6e2e0eb543939ac1f85107b29d94c1be0871d928c"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-161455-3bf7036/threedoors-a-linux-amd64"
    sha256 "73b265768cd74e023a0818ea06d9d9bade63a5ddfc0eff6ac63a45de46c36a58"
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
