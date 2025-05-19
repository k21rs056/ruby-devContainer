file = File.open("reader.rb","r")

while line = file.gets  #file.gets&.chomp
  line.chomp!
  puts line
end

file.close