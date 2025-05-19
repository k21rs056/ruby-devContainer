file = File.open("sample.txt","r")

while line = file.gets  #file.gets&.chomp
  line.chomp!
  pp line
end

file.close