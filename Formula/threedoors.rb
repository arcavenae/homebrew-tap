class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.3906c03"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-3906c03/threedoors-darwin-arm64"
    sha256 "365ec0412a7d00c541eac502db858b2662d56bb1dbbe5ea1683a7f96accc586c"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-3906c03/threedoors-darwin-amd64"
    sha256 "8fefbc9afefb7b03219acba014bd4fed02544004d6d80cef1b73fd9fe2aea795"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
