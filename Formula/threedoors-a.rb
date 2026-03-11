class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.47528c3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-47528c3/threedoors-a-darwin-arm64"
    sha256 "575df60388a905878f84ccd182b2ca3c2f7ccd282d34c319ac2ef6a370b5233d"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-47528c3/threedoors-a-darwin-amd64"
    sha256 "19ffa6c9e82888eab95ec1ce15ed15767414d4aa079cabc15707f4a79a976c3e"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-47528c3/threedoors-a-linux-amd64"
    sha256 "efc363ec08e0bf8d0fdcf5a37daef4cfd1d0da4a663c316e2bb06815d0c2dba6"
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
