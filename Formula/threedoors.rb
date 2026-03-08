class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.5ff413d"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-5ff413d/threedoors-darwin-arm64"
    sha256 "4322962585987e36a0945804c6fae401b760af9b423f330b6039fb9147d7cbce"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-5ff413d/threedoors-darwin-amd64"
    sha256 "c96f2414a330adf8b4d4acf54f79e5f721cdd4c0290661458831f899e6f0b89e"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
