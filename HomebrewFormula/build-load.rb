class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.3.6/build-load-darwin-amd64"
  version "v0.3.6"
  sha256 "fcd86881bd9b71c236c357993a9c9e57f4c05c92a848ecfd2a8886eb1a82228c"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
