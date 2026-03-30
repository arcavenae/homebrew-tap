class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.063850.4c8e4bd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-063850-4c8e4bd/threedoors-a-darwin-arm64"
    sha256 "45ba4cabf39dff20d590b9cc9b8e40cd6db31e9f0578168775a0a7871d8aa880"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-063850-4c8e4bd/threedoors-a-darwin-amd64"
    sha256 "3aca52d4807401fbc7e9c6398084e512a71563242bd4aabc156e812ff14c83d6"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-063850-4c8e4bd/threedoors-a-linux-amd64"
    sha256 "543b6eadb22c1578543ccb20b2f0af21d2c49d50623334839298857337e3fccf"
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
