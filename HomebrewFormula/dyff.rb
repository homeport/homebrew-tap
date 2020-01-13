class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.0.0/dyff-darwin-amd64"
  version "v1.0.0"
  sha256 "6838f5df5251dc0a2ae9bf13938b8920ec1db40410286ca7bddfab493afe3893"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
