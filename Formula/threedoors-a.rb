class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.ec546ab"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-ec546ab/threedoors-a-darwin-arm64"
    sha256 "d16e03722743db1944363d493fb3727a1a120ad60679b3bc95e4ee9d9e61cdd5"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-ec546ab/threedoors-a-darwin-amd64"
    sha256 "6224d99a22c293316e8996ff4da1e6b028baeab290f71b6355db6693a092d465"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-ec546ab/threedoors-a-linux-amd64"
    sha256 "ee5ff3f09c2529092bf14cf7ece8369c2c3d1facd5a6684a0bc05700f9041c73"
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
