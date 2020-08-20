class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.0.4/dyff-darwin-amd64"
  version "v1.0.4"
  sha256 "a91f7b532d42b3d4473829f6764eb6e3772a685504276ad9a8b5eda44f38647a"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
