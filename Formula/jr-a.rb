class JrA < Formula
  desc "Fast, keyboard-driven Jira CLI with offline support and fuzzy search (alpha channel)"
  homepage "https://github.com/arcavenae/jira-cli"
  version "alpha-20260326.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcavenae/jira-cli/releases/download/alpha-20260326.2/jr-a-darwin-arm64"
    sha256 "30f66ab754975452b0205683cb6e923243aa170606e342d3d09716ba4e3a69f6"
  else
    url "https://github.com/arcavenae/jira-cli/releases/download/alpha-20260326.2/jr-a-darwin-amd64"
    sha256 "da51b8fb987fa9dc9f90c1ba1ef014d037ff56c6d681677eef3790fafdbee121"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "jr-a-darwin-arm64" : "jr-a-darwin-amd64"
    bin.install binary_name => "jr-a"
  end

  def caveats
    <<~EOS
      jr-a is the alpha channel. Updates on every push to develop.
      For stable: brew install arcavenae/tap/jr
    EOS
  end

  test do
    assert_match "jr", shell_output("#{bin}/jr-a --version 2>&1")
  end
end
