class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.235930.375f032"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-235930-375f032/threedoors-a-darwin-arm64"
    sha256 "bb08709432a1f1f01d9748fa7595f65cada869f7d7e6100d167d9f028f339e3f"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-235930-375f032/threedoors-a-darwin-amd64"
    sha256 "c74ce853f2d2b54c78384e03b2312356f687147db3ca0158c412fb8cc88b7f39"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-235930-375f032/threedoors-a-linux-amd64"
    sha256 "0236e5100433f9e02a7154262d87a7742cb19d0e15e3bc37125ea47da092ba65"
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
