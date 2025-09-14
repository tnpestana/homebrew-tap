class Captainslog < Formula
  desc "Markdown log tool"
  homepage "https://github.com/tnpestana/CaptainsLog"
  url "file:///Users/tiagopestana/Developer/CaptainsLog.tar.gz"
  version "0.0.1-dev"  
  depends_on "lua"

  def install
    bin.install "bin/clog"
    libexec.install Dir["src/*.lua"]
    inreplace bin/"clog", "__MAIN_LUA__", libexec/"main.lua"
  end
end
