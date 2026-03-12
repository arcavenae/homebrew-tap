class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.224912.3323570"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-224912-3323570/threedoors-a-darwin-arm64"
    sha256 "be1a4ffc1e632e1b20005bc3e0fe439d036c0235c04d1a5e84e4f32ea7516b65"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-224912-3323570/threedoors-a-darwin-amd64"
    sha256 "4e1c9f180c58ad088e81c38391e8bef6a883629da16f70fa1081e495b5cf3af5"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-224912-3323570/threedoors-a-linux-amd64"
    sha256 "4f68bcdcdb7408a310f4bccc1dd741e98b31145908362db9ca54cf32986716ea"
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
