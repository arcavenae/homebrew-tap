class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.69c9e1b"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-69c9e1b/threedoors-a-darwin-arm64"
    sha256 "eeaae76c226ef51ac6b5f503b8f096ebcda15c25cefb9e1f7b1375631b44a7b4"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-69c9e1b/threedoors-a-darwin-amd64"
    sha256 "66f714437ef7ef96d86b959bffa8de2644eef12c6296d62cc663ea5e2ddb6b0e"
  end

  on_linux do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-69c9e1b/threedoors-a-linux-amd64"
    sha256 "e5ec3aca9c198f47ef4d34f328276ca360beb3ce50f53f68dbfb91c47ca4315e"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.mac?
      bin.install "threedoors-a-darwin-amd64" => "threedoors-a"
    else
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
