class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.3.4/build-load-darwin-amd64"
  version "v0.3.4"
  sha256 "d5b4eaf9310603268b1a757472a407ac9d7f133edf03a1b6f32c20179facafa2"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
