class JrA < Formula
  desc "Fast, keyboard-driven Jira CLI with offline support and fuzzy search (alpha ch)"
  homepage "https://github.com/arcavenae/jira-cli"
  version "alpha-20260405.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcavenae/jira-cli/releases/download/alpha-20260405.2/jr-a-darwin-arm64"
    sha256 "25c644600d2991e56170d34efd47c3f1747b14cce8ae730a947b9a3b4275caff"
  else
    url "https://github.com/arcavenae/jira-cli/releases/download/alpha-20260405.2/jr-a-darwin-amd64"
    sha256 "72d759fa7c919fb16c9e5d1b0ddab0b0b296c61e6af9ae96812d794980fdce72"
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
