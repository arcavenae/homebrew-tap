class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.234604.898097e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-234604-898097e/threedoors-a-darwin-arm64"
    sha256 "267c919021c7baccd408449bb8cb756a34845c564966c6ac216b385fbc1b44fc"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-234604-898097e/threedoors-a-darwin-amd64"
    sha256 "bb0459fbbde8aed6b57694af688c22b958792b9bcb394c33cc934af650fc8ce6"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-234604-898097e/threedoors-a-linux-amd64"
    sha256 "d94917c6c33a3e4cd731c7316e8bb0d5160a9f5eec68879e148e87b2492f2a6c"
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
