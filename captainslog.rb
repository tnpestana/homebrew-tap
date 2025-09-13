def install
  bin.install "bin/log"
  libexec.install "src/main.lua"
  inreplace bin/"log", "__MAIN_LUA__", libexec/"main.lua"
end
