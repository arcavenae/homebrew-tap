class Switchboard < Formula
  desc "Low-latency encrypted tmux session router"
  homepage "https://github.com/arcavenae/switchboard"
  version "0.1.0-alpha.20260405.b9cc535"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcavenae/switchboard/releases/download/alpha-20260405-052846-b9cc535/switchboard-darwin-arm64"
    sha256 "0a6df81014dc3b75c0e54693f0d13a0a48c6fbc1688e7b08e264bf5975944252"
  else
    url "https://github.com/arcavenae/switchboard/releases/download/alpha-20260405-052846-b9cc535/switchboard-darwin-amd64"
    sha256 "427fdb32152e893c42d440dcfe28b781716b5176b3608e5469b4224df551f515"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "switchboard-darwin-arm64" : "switchboard-darwin-amd64"
    bin.install binary_name => "switchboard"
  end

  test do
    assert_match "switchboard", shell_output("#{bin}/switchboard --version 2>&1")
  end
end
