class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.3edb04f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-3edb04f/threedoors-a-darwin-arm64"
    sha256 "b1cbfeaaf0772574027313000919f7f1b985e5e0a9430a6658cade3cd07c2c5f"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-3edb04f/threedoors-a-darwin-amd64"
    sha256 "87633ca59292531d237af025ad222376b9a9ea4c43112cdd1f6f4bf527e286df"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-3edb04f/threedoors-a-linux-amd64"
    sha256 "171fe0ce2f1b5833d644991fff697c5747c9508c67bc09c9079f7d5157c4b3fd"
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
