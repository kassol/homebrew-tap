class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.2/brewcli-v0.1.2-macos-arm64.tar.gz"
    sha256 "2e4522f9fce274d70a82dcf8acf85ce42aca2ec96da7f62748200f205c1c7101"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.2/brewcli-v0.1.2-macos-x64.tar.gz"
    sha256 "c811be9670969a1b9f5b34f98a17714d1831fd8549f50fe538c9a7dd81b657bb"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.2", output
  end
end
