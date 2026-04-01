class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260401.032630.69cb8a1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-032630-69cb8a1/threedoors-a-darwin-arm64"
    sha256 "feadd12f762e3f9932a819da6d3e0d37fd508b585a8cd6223bcb20736ba6737b"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-032630-69cb8a1/threedoors-a-darwin-amd64"
    sha256 "ffe8afed43f0485b201241aa3d364be0586f6e09bcba0c6cda874467b86f034d"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-032630-69cb8a1/threedoors-a-linux-amd64"
    sha256 "3fb15571f943cd5d8be32a85371e2756b2965424ab8910a45ed1a200a68649e0"
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
