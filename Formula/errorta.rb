class Errorta < Formula
  desc "Headless AI coding-council CLI"
  homepage "https://github.com/wiggins-j/errorta_app"
  version "0.2.0-alpha.2"
  license "Apache-2.0"
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/wiggins-j/errorta_app/releases/download/cli-v0.2.0-alpha.2/errorta-0.2.0-alpha.2-darwin-arm64.tar.gz"
      sha256 "ca30281d213c06cb027c1bc2ec845104061b3763a9774d9645f77681608af305"
    end
  end

  def install
    bin.install "errorta"
  end

  test do
    assert_match "Coding Council", shell_output("#{bin}/errorta --help")
  end
end
