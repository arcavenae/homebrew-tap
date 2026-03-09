class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.ac8b47e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-ac8b47e/threedoors-a-darwin-arm64"
    sha256 "f72740c1b113a7d7d5dd6ae4937c3808df2d4879714b52f2ca42e3a7822699c4"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-ac8b47e/threedoors-a-darwin-amd64"
    sha256 "cf33f1ae93ab416d8e42e08826dca69159a5066000e41b90a7930a2ed3272072"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-ac8b47e/threedoors-a-linux-amd64"
    sha256 "f1a5f503ea60652a85b827da1fb52858b25bdf3ea2cfac3fc2d6703ab25e6577"
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
