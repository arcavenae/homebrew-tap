class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260319.045243.933b82d"
  license "MIT"

  if OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260319-045243-933b82d/threedoors-a-darwin-arm64"
    sha256 "e7abe45fbf537f65150e26bd72b971f18b211133f2ea47947f326b27168597ae"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260319-045243-933b82d/threedoors-a-linux-amd64"
    sha256 "de2d6e83e0a0bee37003c57a61f1f2ed4c8b536c1e26f08d8cabc7a36e37672e"
  end

  def install
    if OS.mac?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.linux?
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
