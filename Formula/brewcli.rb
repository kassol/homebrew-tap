class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.8"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.8/brewcli-v0.1.8-macos-arm64.tar.gz"
    sha256 "d095abf5d5629a405c8ff634c85328cf9969fbebca75945345004a4791efb9dd"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.8/brewcli-v0.1.8-macos-x64.tar.gz"
    sha256 "8891194cd12db5926a60a992630eeb69474a0a57ff04a60ca7a9717194eae30a"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.8", output
  end
end
