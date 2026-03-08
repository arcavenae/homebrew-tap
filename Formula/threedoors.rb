class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.f4ab966"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-f4ab966/threedoors-darwin-arm64"
    sha256 "b535b5e2baf5340a41868e29c68aae8788ca87f561172f1b7aabd0f90038b98c"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-f4ab966/threedoors-darwin-amd64"
    sha256 "20d9a831080397bfccb8e65d2adec9944d6223304afdc2cd7da70a3d17428b55"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
