#!/usr/bin/ruby

require "socket"
def server sock
  while buf = sock.gets
    p buf
  end
  sock.close
end

s0 = TCPServer.open(80)
while sock = s0.accept
  Thread.new do
    server sock
  end
end
s0.close