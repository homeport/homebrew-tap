# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Retry < Formula
  desc "Tool to retry a command in case it fails"
  homepage "https://github.com/homeport/retry"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/homeport/retry/releases/download/v0.1.7/retry_0.1.7_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3e13995bc9a2afebf37baf923e60e70786cb78a74b75fc565cb33147adeffbb7"

      def install
        bin.install "retry"
      end
    end
    on_arm do
      url "https://github.com/homeport/retry/releases/download/v0.1.7/retry_0.1.7_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "977ce74fea5ff55d64514f1c5ffce6c093a60e29f470bcb703d9d5405569e6d1"

      def install
        bin.install "retry"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/retry/releases/download/v0.1.7/retry_0.1.7_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "482c515529c06c849cdcc60510ff07e70510e58dfe32d296c4cf444ab5dc974a"

        def install
          bin.install "retry"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/retry/releases/download/v0.1.7/retry_0.1.7_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "db2f5980be02678c734ee44b35bdfd1a83421ce6108a1822da44175103dc5bc6"

        def install
          bin.install "retry"
        end
      end
    end
  end

  test do
    system "#{bin}/retry true"
  end
end
