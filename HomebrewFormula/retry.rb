# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Retry < Formula
  desc "Tool to retry a command in case it fails"
  homepage "https://github.com/homeport/retry"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/homeport/retry/releases/download/v0.1.2/retry_0.1.2_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "7ffae132e9a46d607672b8648be8d3d2d621d7247907f48744d1cbccd4f7df57"

      def install
        bin.install "retry"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/homeport/retry/releases/download/v0.1.2/retry_0.1.2_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2aab5cac9d9e38b0e3f4c99edcc78b12221f498c6119587adf7fa4848dd42334"

      def install
        bin.install "retry"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/homeport/retry/releases/download/v0.1.2/retry_0.1.2_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "064af4489c52cae40d150d512d88590b25b4fb0268b67841e74ea03e0954033a"

      def install
        bin.install "retry"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/homeport/retry/releases/download/v0.1.2/retry_0.1.2_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a57d25b48290d6da0d01219a239a0cad2842dd13546d857420d4afb630c187a2"

      def install
        bin.install "retry"
      end
    end
  end

  test do
    system "#{bin}/retry true"
  end
end