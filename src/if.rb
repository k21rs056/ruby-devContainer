puts "Hello"

# ruby標準入出力
#a = gets
#s = gets
#puts a
#puts s

=begin
a = gets.to_i
s = gets
# Pretty Print(デバックに便利)
pp a+2
pp s
=end

=begin
#chomp(文字列の後ろの改行を切る)
t = gets.chomp
s = gets.chomp
pp s+t
=end

#プロンプトっぽく表示する
=begin
print "a?"
a = gets.to_i
puts a+2
=end

#条件分岐
=begin
if a >= 0
  puts "Positive"
else
  puts "Negative"
end


if a > 0
  puts "Positive"
elsif a == 0
  puts "Zero"
else
  puts "Negative"
end
=end

#文字列の比較
=begin
print "name?"
name = gets.chomp
if name == "KSU"
  puts "Hello"
else
  puts "Hi"
end
=end

#rubyではfalseとnil以外はtrue
=begin
q = 5
if q = 4
  puts "Three"
end
=end

#if修飾式
=begin
q = 5
puts("Three") if q == 3
puts("Not Three") if q != 3
puts("Not Three") unless q == 3
=end

