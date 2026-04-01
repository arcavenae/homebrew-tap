class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260401.033257.cb59915"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-033257-cb59915/threedoors-a-darwin-arm64"
    sha256 "dd1af8c0f9b2f31e1b09faf3c9e157369e19cf5b4abf0ba0f2fb23a9476a5e4d"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-033257-cb59915/threedoors-a-darwin-amd64"
    sha256 "6ece781519466549ce39dd08a2aff36ea65cd5d41e31b2c6fb35acbd5bf83518"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-033257-cb59915/threedoors-a-linux-amd64"
    sha256 "20694ad860dcf691ce19be59083f01f9479109f17b4dab7ac1dd1dd9abecc74b"
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
