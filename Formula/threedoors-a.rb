class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.000929.f971c3c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-000929-f971c3c/threedoors-a-darwin-arm64"
    sha256 "0ef062be0f3a4ec808bec434051045154e63e01563db6ea26da251886dd00ddb"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-000929-f971c3c/threedoors-a-darwin-amd64"
    sha256 "bb81164f7b9eb5cf66d34654e90ae1742348780cf73424b73db3af32622c8b38"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-000929-f971c3c/threedoors-a-linux-amd64"
    sha256 "f125456648f9ccffee4af3d459321133f6149e0cd595bbdad110d00417c36b62"
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
