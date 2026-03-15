class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.193633.8c16775"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-193633-8c16775/threedoors-a-darwin-arm64"
    sha256 "39b686bd4acdcd4a02b29f09bcbff7cc98010dde2411904c87f40d8ba4a96ae5"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-193633-8c16775/threedoors-a-darwin-amd64"
    sha256 "038369d2aaea2a22983722e1f12be2aea801a2ae9d5a41b5adba85b7b816471f"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-193633-8c16775/threedoors-a-linux-amd64"
    sha256 "10f768479af84adbc277f116ee967aa9e44028cb420d75dd01b981851853d6f4"
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
