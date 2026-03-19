class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260319.015227.a594b32"
  license "MIT"

  if OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260319-015227-a594b32/threedoors-a-darwin-arm64"
    sha256 "358848a30d9fdb0a6421f6f850e56362b5a73015851ea8ea2a7be6e7baed350c"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260319-015227-a594b32/threedoors-a-linux-amd64"
    sha256 "5f2952d275f9ea421d9f863f24a9d6a66f24e2481dc8092f69ba2a4a976239e5"
  end

  def install
    if OS.mac?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.linux?
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
