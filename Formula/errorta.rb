class Errorta < Formula
  desc "Headless AI coding-council CLI"
  homepage "https://github.com/wiggins-j/errorta_app"
  version "0.1.0-alpha.7"
  license "Apache-2.0"
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/wiggins-j/errorta_app/releases/download/cli-v0.1.0-alpha.7/errorta-0.1.0-alpha.7-darwin-arm64.tar.gz"
      sha256 "0c1cbf5bf985814166b6196da2b3a6cfae75db247f3c66701a8204214cc32eca"
    end
  end

  def install
    bin.install "errorta"
  end

  test do
    assert_match "Coding Council", shell_output("#{bin}/errorta --help")
  end
end
