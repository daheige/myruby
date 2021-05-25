#!/usr/bin/ruby -w

puts '黑哥，你好'

puts '输出字符到终端，puts带换行符'

puts 'hello world'
puts '你好，大黑哥'
puts __FILE__

puts __LINE__
x = 1_234_345
puts x

y = 4e20
puts y
f1 = 2.1
puts f1

# #{expr}任意ruby合法字符串
puts "x=#{x}"

name = 'daheige'
puts (name + ',ok').to_s

print <<~EOF
  	fefefe
  	fefe
  fefefe1344
EOF

# 定义数组
arr = ['12s', 1, 2]
puts arr
arr.each do |i|
  puts i
end

# hash
m = cols = { 'a' => 1, 'b' => 2 }
m.each do |key, val|
  print key, ' is ', val, "\n"
end

# range 1-4 遍历使用each ... do  ..|i|
(1..5).each do |n|
  print n, "\n"
end

(1...10).each do |i|
  print 'current i = ', i, "\n"
end

# code 代码执行之前初始化操作

# code 会在程序运行之前被调用

BEGIN {
  puts 'init ruby'
}
