class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.4.4/havener-darwin-amd64"
  version "v1.4.4"
  sha256 "c9c883d038cc2f761a9710c501c290aafb42b9b75c3c5e1ea07600c205a36d0b"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
