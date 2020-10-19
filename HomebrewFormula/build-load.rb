class BuildLoad < Formula
  desc "build-load - command line tool to create synthetic load for https://github.com/shipwright-io/build"
  homepage "https://github.com/homeport/build-load"
  url "https://github.com/homeport/build-load/releases/download/v0.2.2/build-load-darwin-amd64"
  version "v0.2.2"
  sha256 "c8195033b7d09322261189cfddf567634b5d43b5e15ea914b9ca037cc73d278a"

  def install
    mv('build-load-darwin-amd64', 'build-load')
    bin.install 'build-load'
  end

  test do
    system "#{bin}/build-load", 'version'
  end
end
