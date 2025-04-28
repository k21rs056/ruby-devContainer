#While
a = 5
while a > 0
  puts a
  a -= 1
end

#rubyのfor文はjavaの拡張for文みたいな感じ
ia = [10,30,50,80]
for i in ia
  puts i
end

#オブジェクトが、持つメソッドを使う
#eachメソッドは、配列の要素を一つずつ取り出してくれる
ia.each do |i|
  puts i
end

5.times do |i|
  print "*"
end
puts