class Rafn < Formula
  desc "Lightweight benchmark uploader"
  homepage "https://rafn.dev"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.4/rafn-aarch64-apple-darwin.tar.gz"
      sha256 "373ed608d49a6fefd3bcf41047e2a16b529a40d4f700dab0b274d24c3a8a8154"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.4/rafn-x86_64-apple-darwin.tar.gz"
      sha256 "927004f86e3b0b43cb9d5a35071ea5f944d7c1d1e72ee1a80c953edc85da16ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.4/rafn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa95b097b0adb9ef607a3bbb68041e4a7e3b7880380946d93e479526976c2428"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.4/rafn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dc23b3ce9c4a48a0cccca352d8bd5f64802aeca80b6dfce3d0e98db37e84d94"
    end
  end

  def install
    bin.install "rafn"
  end

  test do
    assert_match "rafn", shell_output("#{bin}/rafn --version")
  end
end
