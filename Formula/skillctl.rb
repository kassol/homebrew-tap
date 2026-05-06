class Skillctl < Formula
  desc "Control plane for user-level global AI agent skills"
  homepage "https://github.com/kassol/skillctl"
  version "0.2.1"
  license "MIT"
  depends_on "node"

  if Hardware::CPU.arm?
    url "https://github.com/kassol/skillctl/releases/download/v0.2.1/skillctl-v0.2.1-macos-arm64.tar.gz"
    sha256 "4628064695088555f346d81074dfde64de3c81db88556c7bddf927d00420a71e"
  else
    url "https://github.com/kassol/skillctl/releases/download/v0.2.1/skillctl-v0.2.1-macos-x64.tar.gz"
    sha256 "37edde34c893149da9e599f60bfd1f4f0ad149a33129dd12dbb516021721adb2"
  end

  def install
    bin.install "skillctl"
  end

  test do
    output = shell_output("#{bin}/skillctl --version")
    assert_match "skillctl", output
  end
end
