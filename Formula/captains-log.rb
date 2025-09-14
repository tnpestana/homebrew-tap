class CaptainsLog < Formula
  desc "Markdown log tool"
  homepage "https://github.com/tnpestana/captains-log"
  url "https://github.com/tnpestana/captains-log/archive/v1.0.0.tar.gz"
  sha256 "ff11d9af19d054bb5c7c7755c6b0a03ab9bdf1f1c157ae74520cdf03137305d3"  
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
