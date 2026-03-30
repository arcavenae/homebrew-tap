class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.055312.555dbbb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055312-555dbbb/threedoors-a-darwin-arm64"
    sha256 "1aa79670dd6cc36fd966ae94112c29cce97d5f8ea62ead083c2ca3fe0c1ebbf6"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055312-555dbbb/threedoors-a-darwin-amd64"
    sha256 "43e3602c66495598bc5eff60ea9c3aef70e7d3e34d58ffb688c2f6a152fae9e6"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055312-555dbbb/threedoors-a-linux-amd64"
    sha256 "967def4129a96399aadb20ce53ee28a72e77c799525a40edf9035568db234b85"
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
