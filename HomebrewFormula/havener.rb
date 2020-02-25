class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.5.1/havener-darwin-amd64"
  version "v1.5.1"
  sha256 "fc93a68509114652cacfc09c81c5ed1f442f9d51baf3198b8cba1411a3807dec"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
