# fact func
def fact(n)
  if n == 0
    1
  else
    n * fact(n - 1)
  end
end

# ARGV 是接收命令终端的参数下标从0开始
puts fact(ARGV[0].to_i)
