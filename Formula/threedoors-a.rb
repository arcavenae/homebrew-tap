class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.032110.00082e1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-032110-00082e1/threedoors-a-darwin-arm64"
    sha256 "4d0cbac9490c256dd1d5ac56cfd3eb3c86b51f2ed677e538f0dccacbf1f22b93"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-032110-00082e1/threedoors-a-darwin-amd64"
    sha256 "f584e699becfd7fdba11af6efa08a2a2b21537a6690e0009c723cf5cd59e12f4"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-032110-00082e1/threedoors-a-linux-amd64"
    sha256 "50b42ce04bb4efcfe444942ab0df5484eefe0171a931b69404c30fc52001e0e8"
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
