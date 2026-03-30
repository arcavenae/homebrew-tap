# Homebrew formula for aclaude-a (alpha channel)
# Updated automatically by CI on every push to main
# macOS only (arm64). Linux users: use install.sh or build from source.

class AclaudeA < Formula
  desc "Opinionated wrapper for Claude Code with persona theming (alpha channel)"
  homepage "https://github.com/arcavenae/aclaude"
  url "https://github.com/arcavenae/aclaude/releases/download/alpha-20260330-210855-0a0dbf1/aclaude-a-darwin-arm64"
  version "alpha-20260330-210855-0a0dbf1"
  sha256 "e70982df24112f75386ef56474e7809c1170c9bfad9a1bc5604641e63cd5ad7c"
  license "MIT"

  def install
    bin.install "aclaude-a-darwin-arm64" => "aclaude-a"
  end

  def caveats
    <<~EOS
      aclaude-a is the alpha channel. Updates on every push to main.
      For stable: brew install arcavenae/tap/aclaude
      Requires Claude Code CLI (claude).
    EOS
  end

  test do
    assert_match "aclaude", shell_output("#{bin}/aclaude-a --version 2>&1")
  end
end
