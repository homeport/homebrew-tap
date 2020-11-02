class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.1.1/dyff-darwin-amd64"
  version "v1.1.1"
  sha256 "85afd8102f226dbd43f8855a220a6cfd8ed7fb9c8b592e9fe4e4a38a6e989a1d"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
