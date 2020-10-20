class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.3.0/build-load-darwin-amd64"
  version "v0.3.0"
  sha256 "fd3542240875d477034da1accc201c6249fcfc597b7a069eb648b81bdc7568d5"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
