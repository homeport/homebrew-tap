class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.3.1/build-load-darwin-amd64"
  version "v0.3.1"
  sha256 "5bffd7b2bafc9ef2aaa4596bb6cd37b1035c3c59134f39be665830abe29cb63d"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
