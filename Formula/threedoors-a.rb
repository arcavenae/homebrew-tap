class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.024754.3ac1c3e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-024754-3ac1c3e/threedoors-a-darwin-arm64"
    sha256 "e42016d838f59e1cf84054460736a49884bef8ba0da77afec910b93e60a2a623"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-024754-3ac1c3e/threedoors-a-darwin-amd64"
    sha256 "5f35e7aeb5705be2f9779a0fa23540d840a360631bebde36900e6a336c3a5d2b"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-024754-3ac1c3e/threedoors-a-linux-amd64"
    sha256 "f672109ac9c783bd1df7505436f1a511f2be8972783a31c1da59ac7d9caf9c20"
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
