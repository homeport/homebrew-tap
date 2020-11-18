class Pd < Formula
  desc "pd - command line tool to query PagerDuty for the current on-calls"
  homepage "https://github.com/homeport/pd"
  url "https://github.com/homeport/pd/releases/download/v2.5.0/pd-darwin-amd64"
  version "v2.5.0"
  sha256 "fa21f9412a62bf2cf747c63df618e0072dc74fe78c8c3b811239959180c181b3"

  def install
    mv('pd-darwin-amd64', 'pd')
    bin.install 'pd'
  end

  test do
    system "#{bin}/pd", 'version'
  end
end
