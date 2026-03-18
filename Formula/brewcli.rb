class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.4/brewcli-v0.1.4-macos-arm64.tar.gz"
    sha256 "46c9cf474f9fc22cc9df4cca634fa5accf1bb46db25c2e4a62550597e6b9b751"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.4/brewcli-v0.1.4-macos-x64.tar.gz"
    sha256 "6ee905d639f5606c1f9dc372f27e5db1159a6851a7d4330c838f61696ae0961d"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.4", output
  end
end
