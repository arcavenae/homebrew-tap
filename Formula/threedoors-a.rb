class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.200136.0a47fe1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-200136-0a47fe1/threedoors-a-darwin-arm64"
    sha256 "a169814386260211c687f584bde7c6aa8ebddf28b79482ce48e590afcb4a89e7"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-200136-0a47fe1/threedoors-a-darwin-amd64"
    sha256 "aa795c96e99eb2433afa2dd874fcaaf938d552dbbf9bc7051672a3f2a6c7ebdf"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-200136-0a47fe1/threedoors-a-linux-amd64"
    sha256 "a0381ed5a25dc5f3f503e76bb5d9e7f8f89ec110abf9ae109496b2ab591ef65d"
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
