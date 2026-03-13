class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.201237.412f47d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-201237-412f47d/threedoors-a-darwin-arm64"
    sha256 "b9ea7a5a185ccc77b45e75fc6a7eb8c14ddb34996109398b5d3b572d015c7915"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-201237-412f47d/threedoors-a-darwin-amd64"
    sha256 "b16ae3e3fcbb46cef1bc61f3f3d9a30989d3e885706714b886728c53f4873ba4"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-201237-412f47d/threedoors-a-linux-amd64"
    sha256 "35c201ed490a2e658b5dde4f9064911edc69d6e5fd5623ef561fe02755e8ef06"
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
