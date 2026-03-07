class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.7fd6069"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-7fd6069/threedoors-darwin-arm64"
    sha256 "f7fc45dd293922dceb0b1e62c453ae059c00f84c4108d0d8926d2eefac73d7eb"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-7fd6069/threedoors-darwin-amd64"
    sha256 "cfb93fc90d9bc0ff2df3b8d41d5268bdf9555cca7eddc6e44bd04bfaf621fdd7"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
