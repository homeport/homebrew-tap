class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.1.4/dyff-darwin-amd64"
  version "v1.1.4"
  sha256 "c71a06c0da53b9ec641ffd6b3542965b280684d1795b2c1a92486de65e6f0c1d"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
