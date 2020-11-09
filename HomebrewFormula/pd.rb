class Pd < Formula
  desc "pd - command line tool to query PagerDuty for the current on-calls"
  homepage "https://github.com/homeport/pd"
  url "https://github.com/homeport/pd/releases/download/v2.4.0/pd-darwin-amd64"
  version "v2.4.0"
  sha256 "a465881c86433bdb34da442e2a0a00bfd860f9827f70ba7b63a04a2f7ac73dc2"

  def install
    mv('pd-darwin-amd64', 'pd')
    bin.install 'pd'
  end

  test do
    system "#{bin}/pd", 'version'
  end
end
