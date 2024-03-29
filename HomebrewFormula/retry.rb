# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Retry < Formula
  desc "Tool to retry a command in case it fails"
  homepage "https://github.com/homeport/retry"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/homeport/retry/releases/download/v0.1.3/retry_0.1.3_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6499fc1ee688f58bc45450c678adbe1616787242436057484e3fe515e8df9878"

      def install
        bin.install "retry"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/homeport/retry/releases/download/v0.1.3/retry_0.1.3_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "811a6a09fdc4f5106c8e8ca77f443074f415bcf38d130b54fb55eb3b6d3942f3"

      def install
        bin.install "retry"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/homeport/retry/releases/download/v0.1.3/retry_0.1.3_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "30c5263ce749206a7515bbe22953e9c990804764ce08e44b6d6f3b3327b95e32"

      def install
        bin.install "retry"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/homeport/retry/releases/download/v0.1.3/retry_0.1.3_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "3fb3006f7fe73e45bcfef5bf23dbff735adc17c4403de04e95f13ca23ea91941"

      def install
        bin.install "retry"
      end
    end
  end

  test do
    system "#{bin}/retry true"
  end
end
