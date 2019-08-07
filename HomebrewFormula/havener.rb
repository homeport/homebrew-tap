class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.1.0/havener-darwin-amd64"
  version "v1.1.0"
  sha256 "7d6266b890b369778b0cd3bdc7561a8f3fbc76a900bff764b6c8e20c830dc5ab"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
