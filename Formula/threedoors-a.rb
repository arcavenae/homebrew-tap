class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260316.020747.19f824c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260316-020747-19f824c/threedoors-a-darwin-arm64"
    sha256 "1fe69e5ebf4691be2d61f1935253e0efa8f1ba33b0be97f204a6b06e39378b38"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260316-020747-19f824c/threedoors-a-darwin-amd64"
    sha256 "81395dccf3344afd6fcd29d54fe77eb8ef5075543b5faa1eb0fcb08b46506dbc"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260316-020747-19f824c/threedoors-a-linux-amd64"
    sha256 "ef2838f2c94ffd6e41df9812f075b8c643cdd2115acc1689794f8aedb916f1cd"
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
