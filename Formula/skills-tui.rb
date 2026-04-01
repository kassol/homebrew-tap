class SkillsTui < Formula
  desc "TUI for managing global AI agent skills"
  homepage "https://github.com/kassol/skills-tui"
  version "0.1.2"
  license "MIT"
  depends_on "node"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/skills-tui/releases/download/v0.1.2/skills-tui-v0.1.2-macos-arm64.tar.gz"
    sha256 "f3ffa8c6f6e7bf3c70e42597d30ffb4f89320e776cf7dfd4021117f2d848670f"
  else
    url "https://github.com/kassol/skills-tui/releases/download/v0.1.2/skills-tui-v0.1.2-macos-x64.tar.gz"
    sha256 "242d12e4d3aa868f457c708e65a6f0359ef5f9b385c52c897429991d76298b42"
  end

  def install
    bin.install "skills-tui"
  end

  test do
    output = shell_output("#{bin}/skills-tui --version")
    assert_match "skills-tui", output
  end
end
