class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.523aeaa"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-523aeaa/threedoors-darwin-arm64"
    sha256 "984fb7ff412ec7daa0007d8966f730cacbf1fc68057229c67e0f2014b23af780"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-523aeaa/threedoors-darwin-amd64"
    sha256 "ead34ddd7b5dfe04cedf5d219482e44d13bfbccd931e1d34a89e765a29fc5e51"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
