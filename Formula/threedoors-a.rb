class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.96939f4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-96939f4/threedoors-a-darwin-arm64"
    sha256 "6601e1af54b467fb03f74eecc5f962826fc3ab592b8dc857acb61a71242b73fd"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-96939f4/threedoors-a-darwin-amd64"
    sha256 "bcbc19b2f040cf7e7ff93c568c13302f7bd6788c0de1866aa95c5935b95f5fba"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-96939f4/threedoors-a-linux-amd64"
    sha256 "ec4a9ede04fbbf3c2a87a498f091ebd7213479a6e6be9538059dbc7a8969edcb"
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
