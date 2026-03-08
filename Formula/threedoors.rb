class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.c9d9fdf"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-c9d9fdf/threedoors-darwin-arm64"
    sha256 "049ad681ae924863d83d3932f999d9fe55e8a28242a780ba2ae6ee02bc10494f"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-c9d9fdf/threedoors-darwin-amd64"
    sha256 "d8d1babbf645c11f53201718a7656fb21c828f5a818bb4c10cf797fe07b53db4"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
