class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.235852.be73216"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-235852-be73216/threedoors-a-darwin-arm64"
    sha256 "b7558ba1f1f620f823689bf2fb209ab2d9b6b2d215f9930da40a5a7340cb38f2"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-235852-be73216/threedoors-a-darwin-amd64"
    sha256 "e246f3bd9e9726b482bd21ab32b397a469e27cbc592ff96e031e4960cf0e071c"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-235852-be73216/threedoors-a-linux-amd64"
    sha256 "58d6f618f7c1c78b78bd3011aa18108643b18096c6af68269220a5ed993d7ded"
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
