class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.bfdccde"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-bfdccde/threedoors-a-darwin-arm64"
    sha256 "aa89941a54090892ef722e566f1ae7112cbed91695f9564fd91186de5775fbfc"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-bfdccde/threedoors-a-darwin-amd64"
    sha256 "91cf613dbfce5b478a8652918a2846fb23b574bb7c6a7b0f2f801a639351e4dc"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-bfdccde/threedoors-a-linux-amd64"
    sha256 "4d817bde792ebf60c46b43a550b67e4a74d4a3cd21348e8aa4be3b6b3afe490a"
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
