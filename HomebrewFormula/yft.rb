class Yft < Formula
  desc "yft - YAML file tool"
  homepage "https://github.com/homeport/yft"
  url "https://github.com/homeport/yft/releases/download/v1.0.1/yft-darwin-amd64"
  version "v1.0.1"
  sha256 "05cdaeea97ea99ef88ade62d0ca31921f122a92bf9c3dc05b7e152859e5d24d7"

  def install
    mv('yft-darwin-amd64', 'yft')
    bin.install 'yft'
  end

  test do
    system "#{bin}/yft", 'version'
  end
end
