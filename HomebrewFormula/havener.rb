class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.4.2/havener-darwin-amd64"
  version "v1.4.2"
  sha256 "9c5154e7be31ca5c5eb42a00ed8cad2ed90f3e36d82f07efbb5b384ef2e28c6e"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
