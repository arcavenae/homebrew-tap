class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.e036ef5"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-e036ef5/threedoors-darwin-arm64"
    sha256 "16a8982215e176b2422a4b7a4d9609b44aded517a9af1c69aa18156bc1fbf72e"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-e036ef5/threedoors-darwin-amd64"
    sha256 "d763c8d29896846356d857c0e9229acb61a3629d19f03eb53e34631d98622931"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
