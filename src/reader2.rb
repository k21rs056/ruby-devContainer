path = ARGV[0]

File.open(path,"r") do |file|
  count = 1
  while line = file.gets  #file.gets&.chomp
    line.chomp!
    puts "#{count}: #{line}"
    count += 1
  end
end