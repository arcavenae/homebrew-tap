class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.222022.82436ae"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-222022-82436ae/threedoors-a-darwin-arm64"
    sha256 "4191aab424ecb4051162c76862f5bf6a429fae12a211b3454a7f9a867f920b7f"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-222022-82436ae/threedoors-a-darwin-amd64"
    sha256 "4d5a5e6c68512eecdaa99197376efc71f30e6930d5fdc6bcc13ddb6a67b0e04f"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-222022-82436ae/threedoors-a-linux-amd64"
    sha256 "3b314798eab4f87e66aba5fe61597fe80ab3e5725774d6e2bf4042346ed94cca"
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
