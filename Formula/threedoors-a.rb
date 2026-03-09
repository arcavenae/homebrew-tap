class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.b051064"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-b051064/threedoors-a-darwin-arm64"
    sha256 "d911c8f84d0c49c2f85c441e0a2e3f340d2a9b697e34cf64d62b32b452306d41"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-b051064/threedoors-a-darwin-amd64"
    sha256 "4e118f07cb42baf2e6abdf0bda45f759527765ac46970d98f04309d13b6d8271"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-b051064/threedoors-a-linux-amd64"
    sha256 "238415b158348abb95521405dcb5d067454ed7c9f8e4959c64cfc96db3768dc1"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.mac?
      bin.install "threedoors-a-darwin-amd64" => "threedoors-a"
    elsif OS.linux?
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
