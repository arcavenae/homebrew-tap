class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260401.024319.1253888"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-024319-1253888/threedoors-a-darwin-arm64"
    sha256 "6e68e856639fd261c64f7b5ce2aa84ad5a77d036327d4db32b4609c2577a4d7a"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-024319-1253888/threedoors-a-darwin-amd64"
    sha256 "9fec156c55dd4b37b890e9c4a6ea2a393079b2179286d0770ccaa875c3ab2df0"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-024319-1253888/threedoors-a-linux-amd64"
    sha256 "c1e5b81c6e9ffc950efdbfefd540eb1b73228d0c2edc55197447d5ca75e89071"
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
