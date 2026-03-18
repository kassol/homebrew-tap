class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.5"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.5/brewcli-v0.1.5-macos-arm64.tar.gz"
    sha256 "2492f877ccd53f3c113746b4c465e37715f847a922ce33d9e4cfb9f11e0d08af"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.5/brewcli-v0.1.5-macos-x64.tar.gz"
    sha256 "14ccafff78d7e741a834d911a01285b09689a0d180cc230cb3a02364073c915b"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.5", output
  end
end
