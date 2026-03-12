class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.234334.39e5844"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-234334-39e5844/threedoors-a-darwin-arm64"
    sha256 "10de2fc87a552ff0853e36b38bd4f341df1156085493d95add2e4a3d823577c5"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-234334-39e5844/threedoors-a-darwin-amd64"
    sha256 "3d26b1d4bcd13070b97ccdf627b8b5478047eca0b018af6a9ae5e81c77fba4dd"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-234334-39e5844/threedoors-a-linux-amd64"
    sha256 "ad8355a96dc7342542a1af11b47de3226301f2748b226f4b57efef3910077052"
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
