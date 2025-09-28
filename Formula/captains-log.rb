class CaptainsLog < Formula
  desc "Markdown log tool"
  homepage "https://github.com/tnpestana/captains-log"
  url "https://github.com/tnpestana/captains-log/archive/v1.0.3.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  
  version "1.0.3"

  depends_on "lua"

  def install
    bin.install "bin/clog"
    libexec.install "src/main.lua"
    (libexec/"utils").mkpath
    (libexec/"utils").install Dir["src/utils/*"]
    inreplace bin/"clog", "__MAIN_LUA__", libexec/"main.lua"
  end
end
