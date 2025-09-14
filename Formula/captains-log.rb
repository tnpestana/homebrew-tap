class Captainslog < Formula
  desc "Markdown log tool"
  homepage "https://github.com/tnpestana/captains-log"
  url "https://github.com/tnpestana/captains-log/archive/v1.0.0.tar.gz"
  sha256 "d205cbd6783332a212c5ae92d73c77178c2d2f28"  
  version "1.0.0"

  depends_on "lua"

  def install
    bin.install "bin/clog"
    libexec.install "src/main.lua"
    (libexec/"utils").mkpath
    (libexec/"utils").install Dir["src/utils/*"]
    inreplace bin/"clog", "__MAIN_LUA__", libexec/"main.lua"
  end
end
