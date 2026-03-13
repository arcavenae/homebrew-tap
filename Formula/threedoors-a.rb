class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.064630.292a9fd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-064630-292a9fd/threedoors-a-darwin-arm64"
    sha256 "aa8c6b358e2bc133b7aed5c7b6fef430b3fce8b8ac072827153c2150e3aa204f"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-064630-292a9fd/threedoors-a-darwin-amd64"
    sha256 "ff78cba4aa59dea4caf7036f7744204d54ce36c058e11e67aa99f1da32bc18c1"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-064630-292a9fd/threedoors-a-linux-amd64"
    sha256 "ef6edd6a16c489534530bc6ba4b15b13edb6512ed4e3787e7589795296a2e6d0"
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
