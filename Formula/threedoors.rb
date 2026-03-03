class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260303.0aceffc"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260303-0aceffc/threedoors-darwin-arm64"
    sha256 "e63273e4bbc0aa1d69a37fff7b363a98967b51a9fdf3d8e6f7ca647c59ff1181"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260303-0aceffc/threedoors-darwin-amd64"
    sha256 "b510c5a9fdc6e5f061e3ae3118c6e03a4389916d71a96de44043a49ed52ffea5"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
