class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.b17853d"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-b17853d/threedoors-darwin-arm64"
    sha256 "9a3427b8689098b27dce4df00a34a2ae1da56a490661ab5c8ce29d35a5cde118"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-b17853d/threedoors-darwin-amd64"
    sha256 "03e850daffd3fd127b3ad2cf5799a65265fda54c3dad13fee1d2098d7ea2f2e9"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
