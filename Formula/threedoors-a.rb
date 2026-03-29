class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.225736.fe386de"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-225736-fe386de/threedoors-a-darwin-arm64"
    sha256 "653aedcdcf28b533d0dafc930efde5db67fe49e5dc880423171f12bc4e97be79"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-225736-fe386de/threedoors-a-darwin-amd64"
    sha256 "dc524d3febcfc43e7c50c2aefff8092e63364003620e2d8ced6201220f8e3775"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-225736-fe386de/threedoors-a-linux-amd64"
    sha256 "9ca8dbe13d31c2dd343ec524aaaec14aa235ca62284da9b2d0cd243d063de3cb"
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
