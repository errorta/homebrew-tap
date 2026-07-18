class Errorta < Formula
  desc "Headless AI coding-council CLI"
  homepage "https://github.com/wiggins-j/errorta_app"
  version "0.1.0-alpha.4"
  license "Apache-2.0"
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/wiggins-j/errorta_app/releases/download/cli-v0.1.0-alpha.4/errorta-0.1.0-alpha.4-darwin-arm64.tar.gz"
      sha256 "0f6f52afa51dd5be9e0a5e3a480d853a6aa306678617d2effb65b7ee822fcbfb"
    end
  end

  def install
    bin.install "errorta"
  end

  test do
    assert_match "Coding Council", shell_output("#{bin}/errorta --help")
  end
end
