class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.6e8c6e8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-6e8c6e8/threedoors-a-darwin-arm64"
    sha256 "9fcbe368ea2cb476dc311a69b2946e29199278860e496f01742fcfedb3098517"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-6e8c6e8/threedoors-a-darwin-amd64"
    sha256 "18240f6b3c273a3f9b127549b48e01bc326175e444b30e97765fb72af32ec562"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-6e8c6e8/threedoors-a-linux-amd64"
    sha256 "12d4ed5b15e332b31ce39bdf20c044da8cd50fd0f7b9f59cfacd7be50c1bfcc2"
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
