class PinaGolada < Formula
  desc "pina-golada - a simple asset tool for go, which generates interface implementations that provide files/folders in the final build, without rendering them in the source code themselve"
  homepage "https://github.com/homeport/pina-golada"
  url "https://github.com/homeport/pina-golada/releases/download/v1.4.1/pina-golada-darwin-amd64"
  version "v1.4.1"
  sha256 "41d3cbde1670d04eb711e7385e643a23ffddf35bc6136cd10fd6e3564da635aa"

  def install
    mv('pina-golada-darwin-amd64', 'pina-golada')
    bin.install 'pina-golada'
  end

  test do
    system "#{bin}/pina-golada", 'version'
  end
end
