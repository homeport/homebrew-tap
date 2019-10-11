class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.4.0/havener-darwin-amd64"
  version "v1.4.0"
  sha256 "cb5c72ae6518e50e1880df68bd513c2625e7b5a255f85f46ef649e800daea46a"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
