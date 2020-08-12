class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.0.3/dyff-darwin-amd64"
  version "v1.0.3"
  sha256 "a668e891ef8d2f220fca036b5573273961134ea2c82fe0aa00740f40de477068"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
