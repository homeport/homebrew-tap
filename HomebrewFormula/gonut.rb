class Gonut < Formula
  desc "gonut - a portable tool to help you verify whether you can push a sample app to a Cloud Foundry"
  homepage "https://github.com/homeport/gonut"
  url "https://github.com/homeport/gonut/releases/download/v2.0.0/gonut-darwin-amd64"
  version "v2.0.0"
  sha256 "70b861b4a7403c91175e5361b39ff480dc72ddab4d230517395cad612159ebb4"

  def install
    mv('gonut-darwin-amd64', 'gonut')
    bin.install 'gonut'
  end

  test do
    system "#{bin}/gonut", 'version'
  end
end
