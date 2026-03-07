class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.8e99910"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-8e99910/threedoors-darwin-arm64"
    sha256 "830793ad733e1bcffe665391c9459dd34f17a00946d376a4db0b9158ec3cdd73"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-8e99910/threedoors-darwin-amd64"
    sha256 "500bcbab5abac4f94056a7d0057ebf0329f0387de11f9e1f472db1a5889df412"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
