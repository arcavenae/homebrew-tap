class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260304.0cd29d6"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-0cd29d6/threedoors-darwin-arm64"
    sha256 "1ea5d3807a7a71fde970db8eda2ad710d05889d42913613a7c4e853ddc658d47"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-0cd29d6/threedoors-darwin-amd64"
    sha256 "e1cc4cdea54f506a563526ac6f080dab67779d9a2c717dee20ed24ea3adf8b1d"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
