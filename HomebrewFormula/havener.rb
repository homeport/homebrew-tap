class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.3.0/havener-darwin-amd64"
  version "v1.3.0"
  sha256 "79d3c0fd24f6b8f8c441d704da4f7bb96572cea643c10fc5b2537ffd55b06f7f"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
