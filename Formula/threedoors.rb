class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.5aae3e6"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-5aae3e6/threedoors-darwin-arm64"
    sha256 "fb2197d89a72f1e7d1e208675f96310fed0a4ab97f52c0a89a7961a95d028d58"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-5aae3e6/threedoors-darwin-amd64"
    sha256 "1da58cf9416d0333242aa367dd547501f1d419f0c0b4e773088b3511ad8b09ba"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
