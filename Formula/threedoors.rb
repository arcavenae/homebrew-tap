class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.a6b8615"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-a6b8615/threedoors-darwin-arm64"
    sha256 "838d30c7788d1b03a76fe05f3bb77ea952ad47703130926d2eeab719a46663c4"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-a6b8615/threedoors-darwin-amd64"
    sha256 "48553e31174eca486e0b9e75988460f9eaeaf80efd62a0024e7064f56d498c0b"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
