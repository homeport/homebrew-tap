class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.2.1/build-load-darwin-amd64"
  version "v0.2.1"
  sha256 "9529f310cafed49c60d814d9d0c1b8cc2e5819b52087b2d9c26cf13e154d5afd"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
