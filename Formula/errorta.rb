class Errorta < Formula
  desc "Headless AI coding-council CLI"
  homepage "https://github.com/wiggins-j/errorta_app"
  version "0.1.0-alpha.18"
  license "Apache-2.0"
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/wiggins-j/errorta_app/releases/download/cli-v0.1.0-alpha.18/errorta-0.1.0-alpha.18-darwin-arm64.tar.gz"
      sha256 "6a51745268c81639fac918c52f9385f663fd29f51824812e6fa1fd0d52ffc589"
    end
  end

  def install
    bin.install "errorta"
  end

  test do
    assert_match "Coding Council", shell_output("#{bin}/errorta --help")
  end
end
