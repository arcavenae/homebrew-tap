class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.45b4d10"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-45b4d10/threedoors-darwin-arm64"
    sha256 "ea17555cd814c2514d76b69068ec21a9e3486993ec9955dab97ba4d0e5823631"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-45b4d10/threedoors-darwin-amd64"
    sha256 "d57b3738b2ca785966830a28ea18b9d59cfb1ec3872a1cf2ff8860a39fe526cc"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
