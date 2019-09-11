class Havener < Formula
  desc "Havener - Convenience tool to handle tasks around Containerized CF workloads on a Kubernetes cluster"
  homepage "https://github.com/homeport/havener"
  url "https://github.com/homeport/havener/releases/download/v1.2.0/havener-darwin-amd64"
  version "v1.2.0"
  sha256 "4b81a4a52abf99c6a693c8aca67520fe8818836dec5acbbc57830f03b41da0b4"

  def install
    mv('havener-darwin-amd64', 'havener')
    bin.install 'havener'
  end

  test do
    system "#{bin}/havener", 'version'
  end
end
