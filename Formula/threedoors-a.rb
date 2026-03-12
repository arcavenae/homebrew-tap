class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.025640.550b971"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-025640-550b971/threedoors-a-darwin-arm64"
    sha256 "8ecc68d1af740692c00144bbbf87f61d6c6d62c749f4ece9c38f82ace3145fe5"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-025640-550b971/threedoors-a-darwin-amd64"
    sha256 "1cbf77a5cfabaf78b23d91826f379fb47a08a61597c8d91d45322fd493c041f6"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-025640-550b971/threedoors-a-linux-amd64"
    sha256 "e1a8fc569aab826c644cf3a33248fbb5c73e4b5e386c8380747890e62adc3a5c"
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
