class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.1.2/dyff-darwin-amd64"
  version "v1.1.2"
  sha256 "9fe2897bce47888788416771c9de4911a3289d4242af1d0afc1cae3728ea6bc2"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
