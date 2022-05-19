# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  version "1.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/homeport/dyff/releases/download/v1.5.3/dyff_1.5.3_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "be08f254c6e67974e8d61b713fd012eedc2d4d87814fa2842d53278f23802795"

      def install
        bin.install "dyff"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/homeport/dyff/releases/download/v1.5.3/dyff_1.5.3_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "7b3dc1a8c11751ee9f3373414be8fc9d94dfd67b19c32e2265964cc64a5a7ac1"

      def install
        bin.install "dyff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/homeport/dyff/releases/download/v1.5.3/dyff_1.5.3_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c1016a903d72419a25a561d50b6ec69efc53c0be3911d3303604ec903692cf11"

      def install
        bin.install "dyff"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/homeport/dyff/releases/download/v1.5.3/dyff_1.5.3_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "f4e958be829ccb58df70956e4189f67fe24ec8746891f224f6412a31b72009eb"

      def install
        bin.install "dyff"
      end
    end
  end

  test do
    system "#{bin}/dyff version"
  end
end
