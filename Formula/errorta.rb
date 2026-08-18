class Errorta < Formula
  desc "Headless AI coding-council CLI"
  homepage "https://github.com/wiggins-j/errorta_app"
  version "0.2.0-alpha.0"
  license "Apache-2.0"
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/wiggins-j/errorta_app/releases/download/cli-v0.2.0-alpha.0/errorta-0.2.0-alpha.0-darwin-arm64.tar.gz"
      sha256 "a04cee2227b41eedd257bc2a5b1add7576a75f07aea279c8544acb4bd3dae2a4"
    end
  end

  def install
    bin.install "errorta"
  end

  test do
    assert_match "Coding Council", shell_output("#{bin}/errorta --help")
  end
end
