class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260403.005728.109d960"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260403-005728-109d960/threedoors-a-darwin-arm64"
    sha256 "6b9bc0d349cbfc65da56f9ca05f82f8664e14d6d359a1dca83007489b6fd401d"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260403-005728-109d960/threedoors-a-darwin-amd64"
    sha256 "ed06eba4d06e98e6977cff60d6f107bb898b5a9d917dd39928c7e7841fd26671"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260403-005728-109d960/threedoors-a-linux-amd64"
    sha256 "a3cb75c8298f4c7668847f04b854509e80dca911d63b74ee1a42893d230fa1d6"
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
