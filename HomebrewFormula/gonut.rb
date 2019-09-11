class Gonut < Formula
  desc "gonut - a portable tool to help you verify whether you can push a sample app to a Cloud Foundry"
  homepage "https://github.com/homeport/gonut"
  url "https://github.com/homeport/gonut/releases/download/v2.0.1/gonut-darwin-amd64"
  version "v2.0.1"
  sha256 "731be4a883333476cc3fff329afa7cd937504b3dccd94ab34f320f06985f050e"

  def install
    mv('gonut-darwin-amd64', 'gonut')
    bin.install 'gonut'
  end

  test do
    system "#{bin}/gonut", 'version'
  end
end
