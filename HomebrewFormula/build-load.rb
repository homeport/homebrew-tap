class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.4.0/build-load-darwin-amd64"
  version "v0.4.0"
  sha256 "05c77fa567a72450155ea16d221d329b64a85944102e86028f69548c59d8f5f4"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
