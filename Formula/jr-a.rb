class JrA < Formula
  desc "Fast, keyboard-driven Jira CLI with offline support and fuzzy search (alpha ch)"
  homepage "https://github.com/arcavenae/jira-cli"
  version "alpha-20260402.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcavenae/jira-cli/releases/download/alpha-20260402.1/jr-a-darwin-arm64"
    sha256 "09319ad773f831af8de5ed085bdc34de3f29cbb1d70d984324cce74c6727e7f3"
  else
    url "https://github.com/arcavenae/jira-cli/releases/download/alpha-20260402.1/jr-a-darwin-amd64"
    sha256 "fba0c7740386b7232956263ae37c8ead14b69b41ea765b0a2bc5a1e443912097"
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
