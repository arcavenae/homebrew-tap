class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.201129.3752b2d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-201129-3752b2d/threedoors-a-darwin-arm64"
    sha256 "34e6d83888ed61247a164a0db08b009b2ca2967ceb0e04474ed8a9f50cc1770b"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-201129-3752b2d/threedoors-a-darwin-amd64"
    sha256 "0515904d72b95128449359f1e7dfbf251b5bfd252202562ded4c4108dd149f1b"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-201129-3752b2d/threedoors-a-linux-amd64"
    sha256 "996d01cc2b41ef04dd10bbbbee24d87826435ab48e65734f79c65f98e6abd765"
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
