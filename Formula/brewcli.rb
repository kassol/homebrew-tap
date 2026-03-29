class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.9"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.9/brewcli-v0.1.9-macos-arm64.tar.gz"
    sha256 "687069285a28b60218b767fa7f45a093ea86e388beb0be299872a16451931b02"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.9/brewcli-v0.1.9-macos-x64.tar.gz"
    sha256 "630a564cc51729c17b57055838994e3ca156e56644b267977f4c9cf6e46b56d0"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.9", output
  end
end
