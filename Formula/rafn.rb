class Rafn < Formula
  desc "Lightweight benchmark uploader"
  homepage "https://rafn.dev"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.5/rafn-aarch64-apple-darwin.tar.gz"
      sha256 "3b419335d0efb3fa7dae65d68339713754557aa3428c5594b71020d479a1d745"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.5/rafn-x86_64-apple-darwin.tar.gz"
      sha256 "b823ce18629dcced51a188b0d355b3175fecf7dc61c3c23f03e28bf9e884493b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.5/rafn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddde9a6d2a4ec663f5c4822d3af20287b4866dc49d6826d3e5ab6851483bc147"
    end
    on_intel do
      url "https://github.com/voron-software/rafn/releases/download/v0.1.5/rafn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86aaf344b6c7274fdb8641908c1c1fc43a3f2af4932700564e06b996cc2660a1"
    end
  end

  def install
    bin.install "rafn"
  end

  test do
    assert_match "rafn", shell_output("#{bin}/rafn --version")
  end
end
