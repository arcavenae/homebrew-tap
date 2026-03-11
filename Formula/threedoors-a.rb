class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.576e24e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-576e24e/threedoors-a-darwin-arm64"
    sha256 "bb66c0750b13f5c511ce37993e1622ee6c49032f7202acd039b0bed70f61c167"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-576e24e/threedoors-a-darwin-amd64"
    sha256 "24a33b58e8d6c7ca17ab750db97c8b4bb62385feafb78e08e338bc38dd7bd8e0"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-576e24e/threedoors-a-linux-amd64"
    sha256 "7c66e29c2f41e330b9be0edaae344a1af5077d2b08fac5efdfa9c50c71cf5f0f"
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
