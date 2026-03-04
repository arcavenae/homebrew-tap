class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260304.bf615e7"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-bf615e7/threedoors-darwin-arm64"
    sha256 "02df346cbe9c781c46008693f6ad34f7799287e21c485055db2d4c4341c76bc1"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-bf615e7/threedoors-darwin-amd64"
    sha256 "68cda19250b971774d1dcd1fcc273fa8cf49341375cb2e7ed91e569deb69cfb7"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
