class Errorta < Formula
  desc "Headless AI coding-council CLI"
  homepage "https://github.com/wiggins-j/errorta_app"
  version "0.2.0-alpha.1"
  license "Apache-2.0"
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/wiggins-j/errorta_app/releases/download/cli-v0.2.0-alpha.1/errorta-0.2.0-alpha.1-darwin-arm64.tar.gz"
      sha256 "c767a788175d034f7dc88ee3e54b518a830756e1c78f1ec32469fb0cb0d29bbd"
    end
  end

  def install
    bin.install "errorta"
  end

  test do
    assert_match "Coding Council", shell_output("#{bin}/errorta --help")
  end
end
