class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v0.10.3/dyff-darwin-amd64"
  version "v0.10.3"
  sha256 "1a1745c1cb8fc69c998e71fbe5a184f750687048b17b35960972ff9767403cc9"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
