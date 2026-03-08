class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.99c720c"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-99c720c/threedoors-darwin-arm64"
    sha256 "763914652c9b6066271258c7b4e03d2880f31604450c493c3d680da0cb41f6fc"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-99c720c/threedoors-darwin-amd64"
    sha256 "94137438a4083501972e428b44c338774f117488a1231ae3427e3afde200ceb9"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
