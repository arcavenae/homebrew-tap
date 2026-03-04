class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260304.ae6c909"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-ae6c909/threedoors-darwin-arm64"
    sha256 "5fa0f72bd184e283bb8777f48a8fd1f2af82bdac1efeaeb428bde7d102c458bf"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-ae6c909/threedoors-darwin-amd64"
    sha256 "cf78dea037a1e1de1e7968beeba2f6fdb12a2b565fb5332d8477cc4de3da108a"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
