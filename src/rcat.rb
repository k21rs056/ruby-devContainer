#! /usr/bin/env ruby

ARGV.each do |args|
  File.open(args,"r") do |file|
    while line = file.gets  #file.gets&.chomp
      line.chomp!
      puts line
    end
  end
end
