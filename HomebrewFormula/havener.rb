class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.5.0/havener-darwin-amd64"
  version "v1.5.0"
  sha256 "1306f71b498dd9a49020ad4998e612960754b5703b7bfe8d431af2f51fa093e2"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
