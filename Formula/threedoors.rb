class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.122b7b6"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-122b7b6/threedoors-darwin-arm64"
    sha256 "dea45490a9271d78c4112b25cee659012d97ebeb2b8fa81eaeccc457ff2ad598"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-122b7b6/threedoors-darwin-amd64"
    sha256 "14ce8cf15521f983f545d48df372223f3b3bff43098a17d291f9146846fe1aa7"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
