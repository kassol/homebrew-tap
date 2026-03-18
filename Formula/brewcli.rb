class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.0/brewcli-v0.1.0-macos-arm64.tar.gz"
    sha256 "62b3edec125f36615861c6276e2e7b659e2ad84f289c6d6c9ce0097aff46dc06"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.0/brewcli-v0.1.0-macos-x64.tar.gz"
    sha256 "7e5e5e4203e1fbbb0be42cf0925eda0665a244bd23826cf2e140d5f3e0217e14"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.0", output
  end
end
