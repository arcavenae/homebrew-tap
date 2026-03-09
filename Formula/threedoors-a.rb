class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.24f8133"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-24f8133/threedoors-a-darwin-arm64"
    sha256 "bc4e4d610f70230c28966ed17216540109d7656a82ad10f6b4e9b7998df58130"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-24f8133/threedoors-a-darwin-amd64"
    sha256 "69d08983d18a7c28b0576db8b2e5d7c1b2f70b917b3c8a3d9f1fc0de5365dde7"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-24f8133/threedoors-a-linux-amd64"
    sha256 "b44ea4d5fffb49cd76bc1ae9cf6eef639acf5c8b42211a4aab705126243d73ee"
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
