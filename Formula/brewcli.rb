class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.6/brewcli-v0.1.6-macos-arm64.tar.gz"
    sha256 "25c77d521277e31058f7a10a8894348dae372415b1848663de4013d097374a6f"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.6/brewcli-v0.1.6-macos-x64.tar.gz"
    sha256 "7c155785c95e4a7b7c420594e601cbf7991ecc61767db99d0155eefe1683aae8"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.6", output
  end
end
