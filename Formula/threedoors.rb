class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.464766d"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-464766d/threedoors-darwin-arm64"
    sha256 "6d96e8fedac1c4e4ff12832126a00bc8141bf348023763c23863d7de2d4b1a2f"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-464766d/threedoors-darwin-amd64"
    sha256 "d9a6a9553eecbeb19fb1f3f32b37cf2956a9d637c7c5cdc7d6f4838e3b16663a"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
