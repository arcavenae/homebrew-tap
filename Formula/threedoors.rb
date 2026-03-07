class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.c38ef38"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-c38ef38/threedoors-darwin-arm64"
    sha256 "dafcfb79f12f7ded7fa1c0878baf8f77129b02d4b87714213be289fb6df54a5b"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-c38ef38/threedoors-darwin-amd64"
    sha256 "ec2978e260695ba88811a5bd4e3b4fa43e48e204459a011d9ae83337f7c6e967"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
