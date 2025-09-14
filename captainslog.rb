class Captainslog < Formula
  desc "Markdown logging tool"
  homepage "https://github.com/yourusername/CaptainsLog"
  url "https://github.com/yourusername/CaptainsLog/archive/v0.1.0.tar.gz"
  sha256 "<FILL_THIS_IN>"
  license "MIT"

  depends_on "lua"

  def install
    bin.install "bin/log"
    libexec.install "src/main.lua"
    inreplace bin/"log", "__MAIN_LUA__", libexec/"main.lua"
  end
end
