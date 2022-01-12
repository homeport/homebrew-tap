# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/homeport/build-load/releases/download/v0.7.3/build-load_0.7.3_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "268295eaddc36cf588f9f92ef0dcb5fc117f07ed2692097916c75a1b7c84d6d3"

      def install
        bin.install "build-load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/homeport/build-load/releases/download/v0.7.3/build-load_0.7.3_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "8e835818eba7d12239a8aa462e510baf6f87f0c98e8efdb491751b6b2a3021b0"

      def install
        bin.install "build-load"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/homeport/build-load/releases/download/v0.7.3/build-load_0.7.3_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "d05c0e6ab263a199c58938add384eea7882f39047d6803321e05fa7492234015"

      def install
        bin.install "build-load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/homeport/build-load/releases/download/v0.7.3/build-load_0.7.3_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "d88780901a43c2d8d6aa9397d5f4e1c4bb8b35782a3b6d70067c8f5872d1d250"

      def install
        bin.install "build-load"
      end
    end
  end

  test do
    system "#{bin}/build-load version"
  end
end
