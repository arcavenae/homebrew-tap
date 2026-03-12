class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.215820.84a4a82"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-215820-84a4a82/threedoors-a-darwin-arm64"
    sha256 "a62dcd7d67cb5ec9872497ab64b290707bac6179af34918bc92c3bd67fb6da84"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-215820-84a4a82/threedoors-a-darwin-amd64"
    sha256 "3299d76d47c2fe7a84299cec04c18ef4a614920bd3bbb1299b93bafbeb0bb798"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-215820-84a4a82/threedoors-a-linux-amd64"
    sha256 "58ae0322b874d425ed5ab6bae838e80666e5c8be21a526ea6edbdbe1bab6741e"
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
