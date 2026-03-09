class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.7bca3ab"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-7bca3ab/threedoors-a-darwin-arm64"
    sha256 "b78e92a25086b1ab6538f3b953969121efbb768275283b2399f9301efd78ac83"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-7bca3ab/threedoors-a-darwin-amd64"
    sha256 "77a851219c3d3b58c6625c61e597b9f6d8f06df03124e2ac5b7779b61ca629f3"
  end

  on_linux do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-7bca3ab/threedoors-a-linux-amd64"
    sha256 "87493aa9b341ca3c623cdba57eb0f498213779a396dafe12c8a5e02e561bfc48"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.mac?
      bin.install "threedoors-a-darwin-amd64" => "threedoors-a"
    else
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
