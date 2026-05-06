class Skillctl < Formula
  desc "Control plane for user-level global AI agent skills"
  homepage "https://github.com/kassol/skillctl"
  version "0.2.2"
  license "MIT"
  depends_on "node"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/skillctl/releases/download/v0.2.2/skillctl-v0.2.2-macos-arm64.tar.gz"
    sha256 "6329c27bc54561b06dd91dd9684e08b66d78b78b2be2a6379a14be6c6c3bdbb9"
  else
    url "https://github.com/kassol/skillctl/releases/download/v0.2.2/skillctl-v0.2.2-macos-x64.tar.gz"
    sha256 "874cda2b7d67a9957cd497f6aa505023bf2a3c0584c609c415299c63a9c14770"
  end

  def install
    bin.install "skillctl"
  end

  test do
    output = shell_output("#{bin}/skillctl --version")
    assert_match "skillctl", output
  end
end
