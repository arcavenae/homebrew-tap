# Homebrew formula for aclaude-a (alpha channel)
# Updated automatically by CI on every push to main

class AclaudeA < Formula
  desc "Opinionated wrapper for Claude Code with persona theming (alpha channel)"
  homepage "https://github.com/arcaven/aclaude"
  version "alpha-20260318-054000-8238cef"
  license "MIT"

  on_macos do
    url "https://github.com/arcaven/aclaude/releases/download/alpha-20260318-054000-8238cef/aclaude-a-darwin-arm64"
    sha256 "19abfe06f4ef149ba00345e9bf69de6ae8495f427b8aaf6e4accfa0f9bba980c"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arcaven/aclaude/releases/download/alpha-20260318-054000-8238cef/aclaude-a-linux-arm64"
      sha256 "SHA256_LINUX_ARM64_PLACEHOLDER"
    else
      url "https://github.com/arcaven/aclaude/releases/download/alpha-20260318-054000-8238cef/aclaude-a-linux-amd64"
      sha256 "SHA256_LINUX_AMD64_PLACEHOLDER"
    end
  end

  def install
    cpu = Hardware::CPU.arm? ? "arm64" : "amd64"
    os = OS.mac? ? "darwin" : "linux"
    binary = "aclaude-a-#{os}-#{cpu}"
    bin.install binary => "aclaude-a"
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
