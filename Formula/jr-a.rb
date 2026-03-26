class JrA < Formula
  desc "Fast, keyboard-driven Jira CLI with offline support and fuzzy search (alpha channel)"
  homepage "https://github.com/arcavenae/jira-cli"
  version "alpha-20260326.5"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcavenae/jira-cli/releases/download/alpha-20260326.5/jr-a-darwin-arm64"
    sha256 "8ec415e9cdd475f3e19b7697a25e153564266cc66f15c002e9f1654565cd2efc"
  else
    url "https://github.com/arcavenae/jira-cli/releases/download/alpha-20260326.5/jr-a-darwin-amd64"
    sha256 "994f9feffc4273bf3b6999a12dd3efa8a0b751bbd310b7b41535a4b92cd4f1fd"
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
