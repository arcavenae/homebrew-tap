class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.062733.0fb0ff3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-062733-0fb0ff3/threedoors-a-darwin-arm64"
    sha256 "1e8bfa78a929f7f4e1732448d56ea8aae357e649a5748ac3d01c9496c4d12233"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-062733-0fb0ff3/threedoors-a-darwin-amd64"
    sha256 "0d171a2f529cff8fb628feffed954e25ca64a2befa7845d23af6a2eb85ca5f79"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-062733-0fb0ff3/threedoors-a-linux-amd64"
    sha256 "17a1ea39500300b4501aba79a264a7fcffd9f45566c55c1de34201575736dfd3"
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
