class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.1.3/dyff-darwin-amd64"
  version "v1.1.3"
  sha256 "5aae7370da6a62a10dc3efa10adc3094a201996f919eefe41d6e015696c00585"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
