# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Havener < Formula
  desc "/ˈheɪvənə/ - Think of it as a swiss army knife for Kubernetes tasks "
  homepage "https://github.com/homeport/havener"
  version "2.2.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/homeport/havener/releases/download/v2.2.6/havener_2.2.6_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0b202adde17d1d0099c1033349badf82a07d4899be7672e4c92221117c9fa31f"

      def install
        bin.install "havener"
      end
    end
    on_arm do
      url "https://github.com/homeport/havener/releases/download/v2.2.6/havener_2.2.6_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "34ae9043bdf8eff33f367e89d0bc7481d0b9ad3c46b73d23cc7e2f5a39a4eb0a"

      def install
        bin.install "havener"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/havener/releases/download/v2.2.6/havener_2.2.6_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "12df6d8e5e5c6e7748b0d0bb08653649433a4ac01a05e33dc996d2c4ec2a6f89"

        def install
          bin.install "havener"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/homeport/havener/releases/download/v2.2.6/havener_2.2.6_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "d53b7f2132051bdcd3e4a842ec17662b6316474c2a38ce115268c16fb80074ea"

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
