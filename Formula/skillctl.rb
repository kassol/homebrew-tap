class Skillctl < Formula
  desc "Control plane for user-level global AI agent skills"
  homepage "https://github.com/kassol/skillctl"
  version "0.2.0"
  license "MIT"
  depends_on "node"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/skillctl/releases/download/v0.2.0/skillctl-v0.2.0-macos-arm64.tar.gz"
    sha256 "cfd39a0be84705671f7ee6b91f9eb740db411dbb7fe7926e18e079203f338254"
  else
    url "https://github.com/kassol/skillctl/releases/download/v0.2.0/skillctl-v0.2.0-macos-x64.tar.gz"
    sha256 "e51c828d7276b829b97ef7e37b235a63a175886e97f3d8798a9b8f92456fe378"
  end

  def install
    bin.install "skillctl"
  end

  test do
    output = shell_output("#{bin}/skillctl --version")
    assert_match "skillctl", output
  end
end
