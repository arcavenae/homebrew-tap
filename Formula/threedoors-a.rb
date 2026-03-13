class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.063656.731fb63"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-063656-731fb63/threedoors-a-darwin-arm64"
    sha256 "10634c96d32d5106a23c6a9558ff35e4971cfdac5ccb2b9d19c980cf98d89720"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-063656-731fb63/threedoors-a-darwin-amd64"
    sha256 "f5e98537299a00597d76bc80d0249168397b0cea75ace5ec1f873a5be01ce95d"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-063656-731fb63/threedoors-a-linux-amd64"
    sha256 "ec177e3a83a0782933680408f1a44ffa3ebdacd776267739b24134a1494c4cda"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.mac?
      bin.install "threedoors-a-darwin-amd64" => "threedoors-a"
    elsif OS.linux?
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
