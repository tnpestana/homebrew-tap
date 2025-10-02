class CaptainsLog < Formula
  desc "Markdown log tool"
  homepage "https://github.com/tnpestana/captains-log"
  url "https://github.com/tnpestana/captains-log/archive/v1.0.4.tar.gz"
  sha256 "819f2663ac135e99146a3b5cea44ffa117f2100e6cbc4a0e3fe9982d0e329ee6"
  
  version "1.0.4"

  depends_on "lua"

  def install
    bin.install "bin/clog"
    libexec.install "src/main.lua"
    (libexec/"utils").mkpath
    (libexec/"utils").install Dir["src/utils/*"]
    inreplace bin/"clog", "__MAIN_LUA__", libexec/"main.lua"
  end
end
