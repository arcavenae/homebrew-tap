class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260304.49d213a"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-49d213a/threedoors-darwin-arm64"
    sha256 "3a1e608dd97ef9770a5bedec0b0bd11e2a59039ce071388f28d24c62e2261873"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-49d213a/threedoors-darwin-amd64"
    sha256 "b72d3713c720b2726a01555f5dbff84030b053ac4a01c123da362ad8e20a78eb"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
