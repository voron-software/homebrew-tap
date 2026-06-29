class Rafn < Formula
  desc "Lightweight benchmark uploader for perfscope"
  homepage "https://rafn.dev"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.2/rafn-aarch64-apple-darwin.tar.gz"
      sha256 "b1b6915d579e39f7500d935ae838b4ac561f03f2bf0f0a8612abb393425cc135"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.2/rafn-x86_64-apple-darwin.tar.gz"
      sha256 "2eb716fba3393171154b82380872c7f4d78a6e87199df823a5d47055800e2420"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.2/rafn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e978f88d99d136d7f4015ab81906ef2240700cee65e0c94da52583e1e31bb11a"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.2/rafn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9024f2ebe428c728b1b2530ef5387de301c63eb168c2baee6218413cb10e87c1"
    end
  end

  def install
    bin.install "rafn"
  end

  test do
    assert_match "rafn", shell_output("#{bin}/rafn --version")
  end
end
