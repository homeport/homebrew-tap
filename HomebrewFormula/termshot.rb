# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Termshot < Formula
  desc "Creates screenshots based on terminal command output."
  homepage "https://github.com/homeport/termshot"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/homeport/termshot/releases/download/v0.4.0/termshot_0.4.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "381ae2adab382275f09adba2e87d26a2d1c1103be50e6af03d1a972066cca91a"

      def install
        bin.install "termshot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/homeport/termshot/releases/download/v0.4.0/termshot_0.4.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e9e48cfc8d5ee199988a67c7014758da5ab9f466910cb7b3c1bb6986310cd407"

      def install
        bin.install "termshot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/termshot/releases/download/v0.4.0/termshot_0.4.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "295ccacca15528d212843d0475c4b1e0a73164b2c7c0ba64d11b9a1341b9b555"

        def install
          bin.install "termshot"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/termshot/releases/download/v0.4.0/termshot_0.4.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "07bc2388bbb7ea54cc5ea6e4cd7ce2193be73211d21855d13b341f80ab0bf290"

        def install
          bin.install "termshot"
        end
      end
    end
  end

  test do
    system "#{bin}/termshot --version"
  end
end
