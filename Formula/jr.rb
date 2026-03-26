class Jr < Formula
  desc "Fast, keyboard-driven Jira CLI with offline support and fuzzy search"
  homepage "https://github.com/arcavenae/jira-cli"
  version "0.3.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcavenae/jira-cli/releases/download/v0.3.0/jr-darwin-arm64"
    sha256 "d311d1b45b72577939cc1ba3860932219f33697b5e23f3a83353e12a791ceb0b"
  else
    url "https://github.com/arcavenae/jira-cli/releases/download/v0.3.0/jr-darwin-amd64"
    sha256 "e7d7b6feb210de03eff0f5bd7728717becd1171c1c3bcfcad12566e30ee23ab0"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "jr-darwin-arm64" : "jr-darwin-amd64"
    bin.install binary_name => "jr"
  end

  test do
    assert_match "jr", shell_output("#{bin}/jr --version 2>&1")
  end
end
