class Threedoors < Formula
  desc "Radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.2bccf91"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-2bccf91/threedoors-darwin-arm64"
    sha256 "9359ac602dd72263c4f6007f17e7156357713af2648d4628ce5d42ca39d938d7"
  else
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-2bccf91/threedoors-darwin-amd64"
    sha256 "c1a325adc59b84ed6efc64dac688a2e5bdb0d701149b5cfc96106843edcfcd2c"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1")
  end
end
