# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yft < Formula
  desc "yft - YAML file tool"
  homepage "https://github.com/homeport/yft"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/homeport/yft/releases/download/v1.0.6/yft_1.0.6_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "1f5c2fd7a04c8963707ea68705135b4d382631e37b31e24f27fa64010b311291"

      def install
        bin.install "yft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/homeport/yft/releases/download/v1.0.6/yft_1.0.6_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "460a96a77df2a4e922265ce5f2d4227ec4543f094606a0d82d547dd84909108a"

      def install
        bin.install "yft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/homeport/yft/releases/download/v1.0.6/yft_1.0.6_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "d24b93b2f2c2d5f42d9dcf054bc65fcc1b1e043dc56c4edd605829a541243487"

      def install
        bin.install "yft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/homeport/yft/releases/download/v1.0.6/yft_1.0.6_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b3da8969fd1ed4987c2d9238082b3dc6bd79d8448580d128159aa59f08db8b10"

      def install
        bin.install "yft"
      end
    end
  end

  test do
    system "#{bin}/yft version"
  end
end
