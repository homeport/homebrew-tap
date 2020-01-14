class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.0.1/dyff-darwin-amd64"
  version "v1.0.1"
  sha256 "73bb0fc682e9f3f950b6b1008cfa0597245b8214ef34fab922af2f0a290d1cde"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
