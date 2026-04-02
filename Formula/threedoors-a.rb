class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260402.233238.e4f6984"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260402-233238-e4f6984/threedoors-a-darwin-arm64"
    sha256 "5b794f5f13fb36288683d195c4461dce64c6dad38c6f2907b36747f226389d0f"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260402-233238-e4f6984/threedoors-a-darwin-amd64"
    sha256 "4c24f71da1797253b3cc7878016b7182aca2b7512412290fb992d525809f8d39"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260402-233238-e4f6984/threedoors-a-linux-amd64"
    sha256 "6a4ac4d56b704f214352283137e81bec7eff05ec95451c2a8e1156798ee9d74e"
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
