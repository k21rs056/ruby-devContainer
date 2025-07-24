#! /usr/local/bin/ruby

require "socket"
host, path ,sign= ARGV

s = TCPSocket.open(host, "http")
s.print("HOROSCOPE #{path} HTTP/1.1\r\n")
s.print("Host: #{host}\r\n")
s.print("Sign: #{sign}\r\n" )
s.print("\r\n")


while line = s.gets&.chomp
  puts line
end