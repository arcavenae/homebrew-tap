class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.33a5d2c"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-33a5d2c/threedoors-a-darwin-arm64"
    sha256 "dd21dc55aae3855f2ce8ddfb8f718f572667659f1eb1cce3cba0dfcc119de887"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-33a5d2c/threedoors-a-darwin-amd64"
    sha256 "4c36c8070a7652c29faf2bc437dde8ff207d92b5bda6807822c399e7c3a577a3"
  end

  on_linux do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-33a5d2c/threedoors-a-linux-amd64"
    sha256 "6c9987d7b2650de191dbe627e29734918c57a8d84b6098696ef0adf4dca1ad37"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.mac?
      bin.install "threedoors-a-darwin-amd64" => "threedoors-a"
    else
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
