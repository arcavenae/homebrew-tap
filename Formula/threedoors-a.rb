class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260401.023150.5e40b26"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-023150-5e40b26/threedoors-a-darwin-arm64"
    sha256 "cc0fe0bca87943d9f0187d949c039617e873a68bff2d4b9bee7d35fa437e0f42"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-023150-5e40b26/threedoors-a-darwin-amd64"
    sha256 "3d4c51fa06aad2fa88b5d4c013fb707c35219acb57f16a55be2c425e357edcf6"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260401-023150-5e40b26/threedoors-a-linux-amd64"
    sha256 "0cebdf83ad027ce87ff4b7c4fb7f3b053d8c6428a3bb194f5ac6af818ab6002c"
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
