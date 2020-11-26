class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.3.7/build-load-darwin-amd64"
  version "v0.3.7"
  sha256 "06964aa5586268c89597ef04abd3a2a2f2562c2d2d024de13f441b5a7288ec40"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
