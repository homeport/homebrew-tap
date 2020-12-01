class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.4.1/build-load-darwin-amd64"
  version "v0.4.1"
  sha256 "09dfdfc7605d04f9d10be6f22698667644e9faff652f37f02279f5bf3d2d3f3f"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
