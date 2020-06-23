#!/usr/bin/ruby -w
# -*- coding:utf-8 -*-
$global_name = "fefe";
ROOT="/web";

# 创建一个ruby类
class Customer
    # 类变量可以跨不同的对象使用。类变量属于类，且是类的一个属性。
    # 类变量在变量名之前放置符号（@@）
    # 类变量（Class variable）类变量被共享在整个继承链中
    # 变量以 @@ 开头，且必须初始化后才能在方法定义中使用
    @@count=0; #在不同的对象中调用，会改变这个值
    MY_COUNT = 12; # 类中的常量
    # 当 initialize 方法被调用时，对象的必要属性被初始化
    def initialize(id,name,addr)
        # 可以被类中其他方法访问的变量
        # 实例变量，也就是类的成员变量
        # 对象实例化就可以使用
        # 未初始化的实例变量的值为 nil，在使用 -w 选项后，会产生警告
        @cust_id=id;
        @cust_name=name;
        @cust_addr = addr;
    end

    def hello()
        puts "hello,ruby";
        puts "id = ",@cust_id;
        puts "name: ",@cust_name;
        puts "my_count:#{MY_COUNT}";
        puts "global ROOT:#{ROOT}";
    end

    # 定义有参数的方法
    def say(name)
        puts @@count;
        puts @cust_addr;
        print "your name: ",name,"\n";
        @@count += 1
       puts "Total number of customers: #@@count";
       puts "global_name= ",$global_name;
       puts "global_name:#$global_name";
    end

end

# 实例化对象
cust = Customer.new(1,"daheige","china");

cust.hello();
cust.say("daheige");

cust2 = Customer.new(2,"xiaoming","china");
cust2.hello();
cust2.say("cc");

=begin
Ruby 伪变量

它们是特殊的变量，有着局部变量的外观，但行为却像常量。您不能给这些变量赋任何值。

    self: 当前方法的接收器对象。
    true: 代表 true 的值。
    false: 代表 false 的值。
    nil: 代表 undefined 的值。
    __FILE__: 当前源文件的名称。
    __LINE__: 当前行在源文件中的编号。    
=end
