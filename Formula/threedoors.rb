class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.a4920d2"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-a4920d2/threedoors-darwin-arm64"
    sha256 "186cf3edac3ab3f12c2f07d0dd7a863ab028e9ef7724843160b7e865932191d5"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-a4920d2/threedoors-darwin-amd64"
    sha256 "590d743cca413a6b069ea548e2f70bdb650b2ffcaacb16ad26e842a8418e01ba"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
