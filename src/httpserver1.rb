#! /usr/bin/ruby
#
require "socket"

s0 = TCPServer.open(80)

loop do
  sock = s0.accept
  Thread.new do
    while line=sock.gets
      print line
      sock.print(line)
      break if line == "\r\n"
    end
    sock.close
    sleep 60
  end
end




s0.close





