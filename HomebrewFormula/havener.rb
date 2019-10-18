class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.4.1/havener-darwin-amd64"
  version "v1.4.1"
  sha256 "8322cd4c0eb0c38567493a9e8c9cb577b8787dda038dea0f74502fc935e1fac3"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
