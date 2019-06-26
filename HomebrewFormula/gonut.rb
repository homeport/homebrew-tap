# MIT License
#
# Copyright (c) 2019 The Homeport Team
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

require 'FileUtils'

# Just the gonut homebrew formula
class Gonut < Formula
  yver = "v0.14.0"
  ysha = "97c5040923bd0fceed13f692ca844952b9e18343ccfe64f17fd982671e16f546"

  desc 'gonut - a portable tool to help you verify whether you can push a sample app to a Cloud Foundry'
  homepage 'https://github.com/homeport/gonut'
  url "https://github.com/homeport/gonut/releases/download/#{yver}/gonut-darwin-amd64"
  sha256 "#{ysha}"
  version "#{yver}"

  def install
    FileUtils.mv('gonut-darwin-amd64', 'gonut')
    bin.install 'gonut'
  end

  test do
    system "#{bin}/gonut", 'version'
  end
end
