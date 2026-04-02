# Homebrew formula for aclaude-a (alpha channel)
# Updated automatically by CI on every push to main
# macOS only (arm64). Linux users: use install.sh or build from source.

class AclaudeA < Formula
  desc "Opinionated wrapper for Claude Code with persona theming (alpha channel)"
  homepage "https://github.com/arcavenae/aclaude"
  url "https://github.com/arcavenae/aclaude/releases/download/alpha-20260402-045057-026e1b1/aclaude-a-darwin-arm64"
  version "alpha-20260402-045057-026e1b1"
  sha256 "f28c6d3e3834791007d93dd75ae1f240481616c32c7eed8846e01a8e6c809c1f"
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
