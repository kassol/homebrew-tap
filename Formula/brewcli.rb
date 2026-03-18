class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.7"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.7/brewcli-v0.1.7-macos-arm64.tar.gz"
    sha256 "6f99a201e2ee08ab2471ab8751b50aee24a4f9c38bef91834766fa747c876267"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.7/brewcli-v0.1.7-macos-x64.tar.gz"
    sha256 "bfe4a88a578f00272d1ad22e8b62e5e803b5c38639d1a9ebc41c42d3ddd69ad0"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.7", output
  end
end
