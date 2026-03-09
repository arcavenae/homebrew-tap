class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.8327db0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-8327db0/threedoors-a-darwin-arm64"
    sha256 "af250d490ca7a7bea92bafe44a40f2611897c9c380e2aaa006f7111b6d3f2dac"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-8327db0/threedoors-a-darwin-amd64"
    sha256 "8a340e06775f467c45301c358343efacf33da349b21ea2f92bc136cca149aadc"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-8327db0/threedoors-a-linux-amd64"
    sha256 "652d4c4f33fb756c949bb8c7b093e15ccf160bcf40b553079cb82b1d0027b7ef"
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
