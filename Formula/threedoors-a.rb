class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.193556.eb4830b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-193556-eb4830b/threedoors-a-darwin-arm64"
    sha256 "0511026e50441c7d58a0c5c7795e10a852ccae7fe8350377f644441bb04d036b"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-193556-eb4830b/threedoors-a-darwin-amd64"
    sha256 "29adb085f1c31358694b4385bca59524bf272631a7d6af7c90fcec9283ee2e2b"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-193556-eb4830b/threedoors-a-linux-amd64"
    sha256 "6fc53b5e78a4d39eeefdf007de8d84176b69b0159452168df10b6c5a4b836c4c"
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
