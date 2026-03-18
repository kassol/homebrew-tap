class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.4/brewcli-v0.1.4-macos-arm64.tar.gz"
    sha256 "959a6b16e2d16db07400634f0d156539459e8ee8d16cef5472b296899fe9e94f"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.4/brewcli-v0.1.4-macos-x64.tar.gz"
    sha256 "30cf9016777eb0f7a2da0478e848f2541b9ce2a169c8c53348bee268856f92e0"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.4", output
  end
end
