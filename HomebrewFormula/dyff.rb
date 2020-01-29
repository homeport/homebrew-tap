class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.0.2/dyff-darwin-amd64"
  version "v1.0.2"
  sha256 "861909bfa11dc7591fa9e77815c487435b8fe933eaf38126a7388a5eebb0e979"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
