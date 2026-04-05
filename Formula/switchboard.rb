class Switchboard < Formula
  desc "Low-latency encrypted tmux session router"
  homepage "https://github.com/arcavenae/switchboard"
  version "0.1.0-alpha.20260405.b3e7cf0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcavenae/switchboard/releases/download/alpha-20260405-b3e7cf0/switchboard-darwin-arm64"
    sha256 "825856727bcb97afde08a7ea3b599d46443f826b718e13a9f97e9d18ff2304cd"
  else
    url "https://github.com/arcavenae/switchboard/releases/download/alpha-20260405-b3e7cf0/switchboard-darwin-amd64"
    sha256 "ceaf412ec0c607641f85096f7597946498ef2fb889a0558abc5a1736ba8ece3b"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "switchboard-darwin-arm64" : "switchboard-darwin-amd64"
    bin.install binary_name => "switchboard"
  end

  test do
    assert_match "switchboard", shell_output("#{bin}/switchboard --version 2>&1")
  end
end
