class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.234001.d8764c2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-234001-d8764c2/threedoors-a-darwin-arm64"
    sha256 "e3bb5a8177bfacee55b47e12989145fabf7772418d8e9c80c9bf3430df3371d2"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-234001-d8764c2/threedoors-a-darwin-amd64"
    sha256 "0a3d05ba465b76062ce4c188c89b82396ae9d46080bf5f5a8066095bd750fdf3"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-234001-d8764c2/threedoors-a-linux-amd64"
    sha256 "b68c0d3ddcc1f97b97711bd388de1ea26967dd0842844c2f95c49818a9e1d321"
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
