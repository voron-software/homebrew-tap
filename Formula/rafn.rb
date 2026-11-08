class Rafn < Formula
  desc "Lightweight benchmark uploader"
  homepage "https://rafn.dev"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.7/rafn-aarch64-apple-darwin.tar.gz"
      sha256 "aaea650668454b93a946fa0287e8d96e40aa626b3d3cdd92d5c4b2cd8c9ac5b5"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.7/rafn-x86_64-apple-darwin.tar.gz"
      sha256 "05ad703cc1563b76dd95cc68c8d1dfb013a8f45cf768728b0efec75f5ee596c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.7/rafn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f4c9be3d073c72903cc4a2f00d6cf404652ea3a8676788ef9b05f09bc0f054c"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.7/rafn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe7f5306f39fff76687af912165f27438f19f131ef71b9badd558ef2b1005786"
    end
  end

  def install
    bin.install "rafn"
  end

  test do
    assert_match "rafn", shell_output("#{bin}/rafn --version")
  end
end
