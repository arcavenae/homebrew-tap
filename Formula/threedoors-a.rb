class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.de23610"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-de23610/threedoors-a-darwin-arm64"
    sha256 "3d88f78d96cd7f204e623a17e4253f9e3ee46840564f1b3cc8a584285eda8c1b"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-de23610/threedoors-a-darwin-amd64"
    sha256 "e357a606a4f53dc9d0f292c24a6413328d518503b6ecb3816e634657c6370f45"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-de23610/threedoors-a-linux-amd64"
    sha256 "0427f2807739d45827c2b2237e1d6bf69d37ec7639e8256d15c1c1fbc7a1d185"
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
