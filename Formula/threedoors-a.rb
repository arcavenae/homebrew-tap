class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.050700.b9c353c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-050700-b9c353c/threedoors-a-darwin-arm64"
    sha256 "248db641c2b1f134e44ec1a5af722e685d8743d3fe4461029f47b96b8870fb5f"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-050700-b9c353c/threedoors-a-darwin-amd64"
    sha256 "78c1c2b6b6caa691b7cc7c48cec5a11482fd112f0e66c26eeb202535e31844be"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-050700-b9c353c/threedoors-a-linux-amd64"
    sha256 "b3b37ca63298b592ef44356d4017ca8f1a3790d37369ae9c4510b93b57b92f59"
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
