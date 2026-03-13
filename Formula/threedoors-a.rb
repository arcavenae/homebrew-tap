class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.201459.a259f54"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-201459-a259f54/threedoors-a-darwin-arm64"
    sha256 "16299406f8ec5ba42cf970a0c471f669fa772b5ae15896e6147c25165cc1f80c"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-201459-a259f54/threedoors-a-darwin-amd64"
    sha256 "27c2e1097847d38ecc0f8ec52b776551006d2e6bb25f1ba3cf738724634b0c0d"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-201459-a259f54/threedoors-a-linux-amd64"
    sha256 "107b23779241130968966cb6a304446c2e694592c6992858054d3a845ac350bc"
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
