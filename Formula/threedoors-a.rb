class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.235105.69f0f8b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-235105-69f0f8b/threedoors-a-darwin-arm64"
    sha256 "daf3767e466f7a91673423c7f462920138c899f09909fc75a9e02714fbcebeb7"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-235105-69f0f8b/threedoors-a-darwin-amd64"
    sha256 "ed09b6a1bc62db16ca9b2ef3767662a6ffec43677ef635b72bf9499af2778c70"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-235105-69f0f8b/threedoors-a-linux-amd64"
    sha256 "ac8748e41b3c4f49deed91c7fdb66b9656da24b4e3745ae09188acfe815482a3"
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
