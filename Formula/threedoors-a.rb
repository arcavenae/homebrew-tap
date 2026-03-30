class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.044856.217d0d0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-044856-217d0d0/threedoors-a-darwin-arm64"
    sha256 "781a0f7f07caaa6120e4df994793d2db2dc1098ca89fb60b025944072a944dad"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-044856-217d0d0/threedoors-a-darwin-amd64"
    sha256 "f6af9d96a6f604480218050001e1efcb214f94b64bfb8c23165e03075e0f1288"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-044856-217d0d0/threedoors-a-linux-amd64"
    sha256 "98b4d511026b37d6182de339408ad36bdd62ada09a5f17e59427e2204abf3df0"
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
