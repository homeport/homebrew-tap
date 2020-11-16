class Yft < Formula
  desc "yft - YAML file tool"
  homepage "https://github.com/homeport/yft"
  url "https://github.com/homeport/yft/releases/download/v1.0.2/yft-darwin-amd64"
  version "v1.0.2"
  sha256 "3e10c147202cb394dade10ffd2f8c6fe1341ef7efdcdbc25a0eaf8ff468ce46a"

  def install
    mv('yft-darwin-amd64', 'yft')
    bin.install 'yft'
  end

  test do
    system "#{bin}/yft", 'version'
  end
end
