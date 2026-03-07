class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.f078e8d"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-f078e8d/threedoors-darwin-arm64"
    sha256 "17e7bd061a5d4b42faad6524d640877251de2dc790f1b2b6513cda2b72fe2a66"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-f078e8d/threedoors-darwin-amd64"
    sha256 "df7a556df4c092c3c963b71dfaaf4399d3f2375f2a46e5ea4c860ce736dc4c22"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
