class Dyff < Formula
  desc "δyƒƒ /ˈdʏf/ - A diff tool for YAML files, and sometimes JSON"
  homepage "https://github.com/homeport/dyff"
  url "https://github.com/homeport/dyff/releases/download/v1.2.0/dyff-darwin-amd64"
  version "v1.2.0"
  sha256 "5fb15a686ec4b64521d4404d48104848966d9d42850512a0e1c71a6705e74beb"

  def install
    mv('dyff-darwin-amd64', 'dyff')
    bin.install 'dyff'
  end

  test do
    system "#{bin}/dyff", 'version'
  end
end
