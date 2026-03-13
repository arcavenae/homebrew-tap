class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.025455.e384778"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-025455-e384778/threedoors-a-darwin-arm64"
    sha256 "50b8b41ce0a71115481e22daf701b2a0554098bbc8d6cf5f451ef3f0685d2661"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-025455-e384778/threedoors-a-darwin-amd64"
    sha256 "e0ad71b854d2db896995f93882aaf190349c50351f001357d55926bdc5cc6f3c"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-025455-e384778/threedoors-a-linux-amd64"
    sha256 "0b57d3ed402c09099b0ca3e49af8d8385868f89cd72a83aac1979b076c320248"
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
