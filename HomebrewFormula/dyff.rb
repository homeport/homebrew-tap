# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  version "1.4.5"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/homeport/dyff/releases/download/v1.4.5/dyff_1.4.5_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "fe750357656708937cfabe8a15cffd6eb86ba87b8250df4156986ee2e7ff2f1d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/homeport/dyff/releases/download/v1.4.5/dyff_1.4.5_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "30973558befab45f62299ed791c0abd19f8fd74a8c2d4f15cce9c0527d8ad720"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/homeport/dyff/releases/download/v1.4.5/dyff_1.4.5_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6850d5c47fe02e5cb2401471aa702c44ea6aafcb7c404961a5b58c6a8ba86695"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/homeport/dyff/releases/download/v1.4.5/dyff_1.4.5_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c88c56b3a6626ba2e42e6fb47931b9aed65eb3b3f43fd0c14bd943028e6b5afb"
    end
  end

  def install
    bin.install "dyff"
  end

  test do
    system "#{bin}/dyff version"
  end
end
