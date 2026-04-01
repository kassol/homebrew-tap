class SkillsTui < Formula
  desc "TUI for managing global AI agent skills"
  homepage "https://github.com/kassol/skills-tui"
  version "0.1.1"
  license "MIT"
  depends_on "node"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/skills-tui/releases/download/v0.1.1/skills-tui-v0.1.1-macos-arm64.tar.gz"
    sha256 "e3dbd69d1aa72252ce1b5a87c197ab549131f3dae90f6a02ccb59660e33ab3dd"
  else
    url "https://github.com/kassol/skills-tui/releases/download/v0.1.1/skills-tui-v0.1.1-macos-x64.tar.gz"
    sha256 "c67e0c32271b6afe1f797d26ebd10edd76fd4f405c49d06b8c3b02117cc635de"
  end

  def install
    bin.install "skills-tui"
  end

  test do
    output = shell_output("#{bin}/skills-tui --version")
    assert_match "skills-tui", output
  end
end
