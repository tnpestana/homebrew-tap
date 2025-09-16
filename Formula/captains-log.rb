class CaptainsLog < Formula
  desc "Markdown log tool"
  homepage "https://github.com/tnpestana/captains-log"
  url "https://github.com/tnpestana/captains-log/archive/v1.0.2.tar.gz"
  sha256 "f24ed0f219ceab1785f9c92896c952bc1fab08a89f81607ca9d59b4bb20fe373"  
  version "1.0.2"

  depends_on "lua"

  def install
    bin.install "bin/clog"
    libexec.install "src/main.lua"
    (libexec/"utils").mkpath
    (libexec/"utils").install Dir["src/utils/*"]
    inreplace bin/"clog", "__MAIN_LUA__", libexec/"main.lua"
  end
end
