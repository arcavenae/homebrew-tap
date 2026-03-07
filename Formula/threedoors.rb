class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.da31667"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-da31667/threedoors-darwin-arm64"
    sha256 "ebc66dfa7929e6c608475a42b8eaee7ad69d00989ccd0b8664103dcd6fe3f446"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-da31667/threedoors-darwin-amd64"
    sha256 "43ebb9ea291eaa2022975190a4cdc5ea557265c5b076dc0e81673ef0decda9e3"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
