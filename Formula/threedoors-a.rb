class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260402.224825.7c0a5d6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260402-224825-7c0a5d6/threedoors-a-darwin-arm64"
    sha256 "f54052a4a988c3798bbd3ac1828e2aa4bfdb32f50973c8d44edf30c40126addb"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260402-224825-7c0a5d6/threedoors-a-darwin-amd64"
    sha256 "e5782f90bf9e03b7bdd3a9bd377fbe4fbb82d58f4b0fa1a89aea6d4d90c99fae"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260402-224825-7c0a5d6/threedoors-a-linux-amd64"
    sha256 "0775184337664de9d718d3d57f056fd114f12249d6ab63b01686f35af0d816ce"
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
