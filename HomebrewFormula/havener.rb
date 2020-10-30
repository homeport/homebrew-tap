class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.5.2/havener-darwin-amd64"
  version "v1.5.2"
  sha256 "a62fe2c7c53009539f351149ac710bff87b37253056f7f780e117dbdb973bc64"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
