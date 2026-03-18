# Homebrew formula for aclaude-a (alpha channel)
# Updated automatically by CI on every push to main
# macOS only (arm64). Linux users: use install.sh or build from source.

class AclaudeA < Formula
  desc "Opinionated wrapper for Claude Code with persona theming (alpha channel)"
  homepage "https://github.com/arcaven/aclaude"
  version "alpha-20260318-054913-fa9082c"
  license "MIT"

  url "https://github.com/arcaven/aclaude/releases/download/alpha-20260318-054913-fa9082c/aclaude-a-darwin-arm64"
  sha256 "d56ffee1db1ee258ed96c446d358ca861bc6d39d7d43c8945a21c433b1c6763a"

  def install
    bin.install "aclaude-a-darwin-arm64" => "aclaude-a"
  end

  def caveats
    <<~EOS
      aclaude-a is the alpha channel. Updates on every push to main.
      For stable: brew install arcaven/tap/aclaude
      Requires Claude Code CLI (claude).
    EOS
  end

  test do
    assert_match "aclaude", shell_output("#{bin}/aclaude-a --version 2>&1")
  end
end
