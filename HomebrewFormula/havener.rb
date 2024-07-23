# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Havener < Formula
  desc "/ˈheɪvənə/ - Think of it as a swiss army knife for Kubernetes tasks "
  homepage "https://github.com/homeport/havener"
  version "2.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/homeport/havener/releases/download/v2.2.2/havener_2.2.2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3a60f128e07be00d35986f46a49ff114bde42eadede1419fd731b855ca4c56f2"

      def install
        bin.install "havener"
      end
    end
    on_arm do
      url "https://github.com/homeport/havener/releases/download/v2.2.2/havener_2.2.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a0dddfad96e7f833f30569e94dae754ab566775172603b636e9bafe898d6a606"

      def install
        bin.install "havener"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/havener/releases/download/v2.2.2/havener_2.2.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "94adf1cfae82fcabe1415925956725f6b267ab204221644f3a6311abb5a01d10"

        def install
          bin.install "havener"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/havener/releases/download/v2.2.2/havener_2.2.2_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "d516ec14ffdc267593594426bb0c798b0b09190444253da4acd8450af3c2aace"

        def install
          bin.install "havener"
        end
      end
    end
  end

  test do
    system "#{bin}/havener version"
  end
end
