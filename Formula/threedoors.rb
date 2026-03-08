class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.2e1506c"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-2e1506c/threedoors-darwin-arm64"
    sha256 "51a16e754da8c7689839d13e7f6fe3daa194299901a5b30927da53400d04f9f5"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-2e1506c/threedoors-darwin-amd64"
    sha256 "d3edf9f8e71f714d64c64902375ebd1d49af77ee2481780ed6c1ad4a2ae892b0"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
