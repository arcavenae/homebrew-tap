class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.182326.136e390"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182326-136e390/threedoors-a-darwin-arm64"
    sha256 "2102873f00203fce54db70034914f13cc96948d0c5fb6c291bace41ce78b8df4"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182326-136e390/threedoors-a-darwin-amd64"
    sha256 "afd06d075d54f365d115c5ab735061577e7143b185504eb3b42489f9f093ca34"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182326-136e390/threedoors-a-linux-amd64"
    sha256 "22937e1eda343e085647bb504cc22aa0e7720aaaae0e9402490624310e03c5c2"
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
