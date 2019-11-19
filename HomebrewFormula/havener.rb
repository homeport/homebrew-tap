class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.4.3/havener-darwin-amd64"
  version "v1.4.3"
  sha256 "a4fa519fb409c4ddc9e8b0132de39643cb08d4d3ba71126570841b538ab20d8e"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
