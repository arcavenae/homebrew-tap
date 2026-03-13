class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.224251.b8a6db5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-224251-b8a6db5/threedoors-a-darwin-arm64"
    sha256 "f6047aa4bd885c1de0f4749a8ccd92984aa8f5d916237902613971295b3e9b6a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-224251-b8a6db5/threedoors-a-darwin-amd64"
    sha256 "151ae9d352c89a7f2d14a35a5d31e72853597a24060bfad4717b5e934812c3f3"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-224251-b8a6db5/threedoors-a-linux-amd64"
    sha256 "14012d4c877577db3712c23ac053e96188fdc2009e2b017d49f640055c4fd08e"
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
