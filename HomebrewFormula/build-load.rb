class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.3.3/build-load-darwin-amd64"
  version "v0.3.3"
  sha256 "25d288fcec152e3a5654cd484188ac6d6344b970ceb508439c5db7e3f533e0db"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
