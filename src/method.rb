def max(x,y)
  if x > y
    x
  else
    y
  end
end

a = 5
b = 10
c = max(a,b)
puts c

# 整数を一つ受け取って、偶数ならeven、奇数ならoddを返すメソッド

def evenOdd(a)
  if a %2 == 0
    "even"
  else
    "odd"
  end
end

puts evenOdd(5)
puts evenOdd(100)


