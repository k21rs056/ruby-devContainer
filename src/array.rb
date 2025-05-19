a = [10,20,50,30]
#for i in a do
#  puts i
#end

#for i in 0..a.length do
# puts a[i]
#end

#i = 0
#while(i < a.length) do
#  puts a[i]
#  i+=1
#end
#

a.each do |i|
  puts i
end

# aの最初の要素が偶数ならば、aから取り除く
# aの要素を全ての要素を表示

if a[0]%2 == 0
    a.shift
end

a.each do |i|
  puts i
end