# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gonut < Formula
  desc "gonut - a portable tool to help you verify whether you can push a sample app to a Cloud Foundry"
  homepage "https://github.com/homeport/gonut"
  version "2.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/homeport/gonut/releases/download/v2.0.6/gonut_2.0.6_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "89d5a65e9a88e93d836788232a0348a62d5a9dc748cb644a7e06ac306531291f"

      def install
        bin.install "gonut"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/homeport/gonut/releases/download/v2.0.6/gonut_2.0.6_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a2c3f2b2e0ba7bbc4ba8c60bad431d2920f604607a713db8573de81679fcae2e"

      def install
        bin.install "gonut"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/homeport/gonut/releases/download/v2.0.6/gonut_2.0.6_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "80f553f36cb4132f7c0152488049298a4b49f7c52530e39ded5c04ebfb059122"

      def install
        bin.install "gonut"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/homeport/gonut/releases/download/v2.0.6/gonut_2.0.6_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c410b4beaf325223e364d9c2ab7031629d7060cf8b2aa01e1982b030c685c07c"

      def install
        bin.install "gonut"
      end
    end
  end

  test do
    system "#{bin}/gonut version"
  end
end
