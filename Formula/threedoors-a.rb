class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.033753.250fe4d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-033753-250fe4d/threedoors-a-darwin-arm64"
    sha256 "0f7e2f0ec99b3d51bb363ea4dd4f2ad22754b2ddb56a3e2e8c2c3ca378864930"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-033753-250fe4d/threedoors-a-darwin-amd64"
    sha256 "0e115a1823c826723c396ef2f25d6b0c3a77caada284fd31edf8927bd8812e91"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-033753-250fe4d/threedoors-a-linux-amd64"
    sha256 "823c77da3671326a5f15d01b4c36db0620d97e46674a2e1dfeadaf797ab9b43c"
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
