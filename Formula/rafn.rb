class Rafn < Formula
  desc "Lightweight benchmark uploader"
  homepage "https://rafn.dev"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.6/rafn-aarch64-apple-darwin.tar.gz"
      sha256 "5a05693999221ff23cb1a353351231271dfc69cd4032d0d00a3493d5ccf46365"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.6/rafn-x86_64-apple-darwin.tar.gz"
      sha256 "24b53600be109d8fc20e2af77b67aa49b6b85a3d1aca43d017018f2d74bc38b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.6/rafn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66462ef6a1ed5010cc68389850e73199f8f6ebf7db16f9f741b08954ebaa4ccf"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.6/rafn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "385e5f4f2670d49eafee07374193cdab70e39147750e1d31e13b167bcb90de0e"
    end
  end

  def install
    bin.install "rafn"
  end

  test do
    assert_match "rafn", shell_output("#{bin}/rafn --version")
  end
end
