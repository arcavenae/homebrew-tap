class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.161950.badbb7f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-161950-badbb7f/threedoors-a-darwin-arm64"
    sha256 "e8e54841da29fecfc6a22085c70adfba22107eb889653eb8458c710a71ebeeab"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-161950-badbb7f/threedoors-a-darwin-amd64"
    sha256 "bbf6cfeb41b218d15861abad45aaade28e98c5edc4ba162d0986a70398fcfb02"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-161950-badbb7f/threedoors-a-linux-amd64"
    sha256 "7bb09f106955d2e624672710e764573be9bf821fef73abea247a89a0ae4a4dd7"
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
