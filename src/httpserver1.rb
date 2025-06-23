#! /usr/bin/ruby
#
require "socket"

s0 = TCPServer.open(80)

loop do
  sock = s0.accept
  while line=sock.gets
    print line
    sock.print(line)
    break if line == "\r\n"
  end
  sock.close
end




s0.close





