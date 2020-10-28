class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.3.2/build-load-darwin-amd64"
  version "v0.3.2"
  sha256 "aa0072b0fc46b3b7ae8d55961edd40061684f3446a789a28c5c4deeafe5b2323"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
