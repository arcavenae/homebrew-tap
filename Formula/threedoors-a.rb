class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.182825.a3ad0f0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182825-a3ad0f0/threedoors-a-darwin-arm64"
    sha256 "db9c280a4a3519e03fc996aa0c3a20aa5d75d35d6fc8f18c7b2d3cac7c888d64"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182825-a3ad0f0/threedoors-a-darwin-amd64"
    sha256 "98607686c4e0d71d196de4ac81579c355cac5008beb96692bf264374d9c289e4"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182825-a3ad0f0/threedoors-a-linux-amd64"
    sha256 "bf5c668e5afead96d7f78c74c0c3a9f1d3ad3b354005fae9e39f4c27ccde6228"
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
