# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forklift < Formula
  desc "Container Image manipulation tool"
  homepage "https://github.com/homeport/forklift"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/homeport/forklift/releases/download/v0.0.2/forklift_0.0.2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4d8a74d56978b7fefe44e9958aa9c7bc2616e5f2c0fe5ebec888d093e5831625"

      def install
        bin.install "forklift"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/homeport/forklift/releases/download/v0.0.2/forklift_0.0.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d7ed33c0d1b6f777da82e154ff8bcd7b79afeb5e13f11617181fc24c85947e9e"

      def install
        bin.install "forklift"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/forklift/releases/download/v0.0.2/forklift_0.0.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "e73fede0199d803cc0c8201bd2819705513e02cfb12616970fd6852ca3d51f48"

        def install
          bin.install "forklift"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/forklift/releases/download/v0.0.2/forklift_0.0.2_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "89c5fa2ec740f62c5f914ac424f1cc2a1a909b322bc9292e9965a06d6e4144dc"

        def install
          bin.install "forklift"
        end
      end
    end
  end

  test do
    system "#{bin}/forklift version"
  end
end
