class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.3ab46f4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-3ab46f4/threedoors-a-darwin-arm64"
    sha256 "e55222319e8d744ff67df4b7bf3bc01883cc97e4dce2bc018120f0e7329975f3"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-3ab46f4/threedoors-a-darwin-amd64"
    sha256 "f8c4781e92e1fd0d64132679ceb84fe5e498837fc9d0e1f6cac68f4d9e2581da"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-3ab46f4/threedoors-a-linux-amd64"
    sha256 "977ab1d1d5c38e00ef9dff5074d8c605e77e2e78ffeae589968a40b3a32088cd"
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
