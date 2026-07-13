class Errorta < Formula
  desc "Headless AI coding-council CLI"
  homepage "https://github.com/wiggins-j/errorta_app"
  version "0.1.0-alpha.0"
  license "Apache-2.0"
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/wiggins-j/errorta_app/releases/download/cli-v0.1.0-alpha.0/errorta-0.1.0-alpha.0-darwin-arm64.tar.gz"
      sha256 "1323beaf37f7040611aa1eb3073af7ababbce25af41d957c3f1594f9a109f411"
    end
  end

  def install
    bin.install "errorta"
  end

  test do
    assert_match "Coding Council", shell_output("#{bin}/errorta --help")
  end
end
