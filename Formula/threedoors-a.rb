class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.183630.880a62d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-183630-880a62d/threedoors-a-darwin-arm64"
    sha256 "4d405e1b655d6d9a24917010fc67282ebf2b54f74ea3d261758f8f77bcca235b"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-183630-880a62d/threedoors-a-darwin-amd64"
    sha256 "bb030039932037c4fd722a107013f607b7dbc5f080069cec13c2461d4331f490"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-183630-880a62d/threedoors-a-linux-amd64"
    sha256 "93ca7d2e18e3b4083203eece34391c98ea82fcec7137d863f19fd49f64243bff"
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
