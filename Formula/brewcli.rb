class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.1/brewcli-v0.1.1-macos-arm64.tar.gz"
    sha256 "ba3d98e221aae0d06617cb163a8f27ac73d7a2dc87c21ec5127f8b0ad176e7c3"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.1/brewcli-v0.1.1-macos-x64.tar.gz"
    sha256 "e9cffd7475f3c28f61deadf444687258cff1d60e6cf0c9cd8c667e128b8e13b0"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.1", output
  end
end
