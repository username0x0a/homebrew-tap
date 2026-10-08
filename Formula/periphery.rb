class Periphery < Formula
  desc "Tool to identify unused code in Swift projects"
  homepage "https://github.com/username0x0a/periphery"
  url "https://github.com/username0x0a/periphery/releases/download/3.9.0/periphery-3.9.0.zip"
  sha256 "bbdce052448d7f0392a60dfee46a60b7e2c122f8d81ea98a908903d569018899"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "periphery"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/periphery version").strip
  end
end
