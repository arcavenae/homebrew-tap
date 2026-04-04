# Homebrew formula for aclaude-a (alpha channel)
# Updated automatically by CI on every push to main
# macOS only (arm64). Linux users: use install.sh or build from source.

class AclaudeA < Formula
  desc "Opinionated wrapper for Claude Code with persona theming (alpha channel)"
  homepage "https://github.com/arcavenae/aclaude"
  url "https://github.com/arcavenae/aclaude/releases/download/alpha-20260404-165944-f00b2c0/aclaude-a-darwin-arm64"
  version "alpha-20260404-165944-f00b2c0"
  sha256 "2aa02ecbb739f68942b04cd0bd1c45610c1a1db28b626c5ca4f2a196650c59fc"
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
