class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.4.2/build-load-darwin-amd64"
  version "v0.4.2"
  sha256 "7364ca129a770b2cd6ea4b12ae321b1a3990aaa4c223be53768a52458cdf39c5"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
