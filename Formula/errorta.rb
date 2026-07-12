class Errorta < Formula
  desc "Headless AI coding-council CLI"
  homepage "https://github.com/wiggins-j/errorta_app"
  version "0.1.0-alpha.0"
  license "Apache-2.0"
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/wiggins-j/errorta_app/releases/download/cli-v0.1.0-alpha.0/errorta-0.1.0-alpha.0-darwin-arm64.tar.gz"
      sha256 "6a9939b35f01bccd11789bf175297aebd2474d135e947a3c1a9351039ab6f79b"
    end
  end

  def install
    bin.install "errorta"
  end

  test do
    assert_match "Coding Council", shell_output("#{bin}/errorta --help")
  end
end
