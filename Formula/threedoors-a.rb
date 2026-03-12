class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.012335.637a30e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-012335-637a30e/threedoors-a-darwin-arm64"
    sha256 "65c43a2b575c85cb8b5680ab61f8298242bfe118651d80bce2717854088d941d"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-012335-637a30e/threedoors-a-darwin-amd64"
    sha256 "9c8a4d45969f5291af880133cdf3fa630728babe99e8c7f30d4a2fd8d6188a19"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-012335-637a30e/threedoors-a-linux-amd64"
    sha256 "760ec633afbe40692d0a4b86699ebbd026f031a250d0109df52261225d503ba9"
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
