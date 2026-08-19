class Errorta < Formula
  desc "Headless AI coding-council CLI"
  homepage "https://github.com/wiggins-j/errorta_app"
  version "0.2.0-alpha.3"
  license "Apache-2.0"
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/wiggins-j/errorta_app/releases/download/cli-v0.2.0-alpha.3/errorta-0.2.0-alpha.3-darwin-arm64.tar.gz"
      sha256 "46614acc8443bdfe3a556520ef101a133d47df436fe354759d1ab04fd03d1c0e"
    end
  end

  def install
    bin.install "errorta"
  end

  test do
    assert_match "Coding Council", shell_output("#{bin}/errorta --help")
  end
end
