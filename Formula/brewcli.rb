class Brewcli < Formula
  desc "Interactive Homebrew TUI built with Bun, TypeScript, and Ink"
  homepage "https://github.com/kassol/brewcli"
  version "0.1.3"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/brewcli/releases/download/v0.1.3/brewcli-v0.1.3-macos-arm64.tar.gz"
    sha256 "13e0641910116822f3da26a01652a82d6df100bc3844b9437f2e1194f41d6243"
  else
    url "https://github.com/kassol/brewcli/releases/download/v0.1.3/brewcli-v0.1.3-macos-x64.tar.gz"
    sha256 "2ec4acf00e2a5de2e562f0bd708b79ef6f51bd5a56c0c6af5b1e02b9a15194bc"
  end

  def install
    bin.install "brewcli"
  end

  test do
    output = shell_output("#{bin}/brewcli --version")
    assert_match "brewcli 0.1.3", output
  end
end
