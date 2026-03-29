class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.233422.840c77f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-233422-840c77f/threedoors-a-darwin-arm64"
    sha256 "5ca074f35dd2bf3bc1ab4aa49b35b86e534653a9b7a0919ca66a5c12033de228"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-233422-840c77f/threedoors-a-darwin-amd64"
    sha256 "735fd25141d12e99c433e4c3813caec2c3afd2d29e0331dbe7947c716ec1e7e8"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-233422-840c77f/threedoors-a-linux-amd64"
    sha256 "d5b77b882def8188dc4938d02f3c23056f7ea871628738d46924f7bb31909a76"
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
