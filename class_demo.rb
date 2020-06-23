#!/usr/bin/ruby -w
# -*- coding:utf-8 -*-

# 创建一个ruby类
class Customer
    # 类变量可以跨不同的对象使用。类变量属于类，且是类的一个属性。
    # 类变量在变量名之前放置符号（@@）
    @@count=0 #在不同的对象中调用，会改变这个值

    # 当 initialize 方法被调用时，对象的必要属性被初始化
    def initialize(id,name,addr)
        # 可以被类中其他方法访问的变量
        # 实例变量，也就是类的成员变量
        @cust_id=id;
        @cust_name=name;
        @cust_addr = addr;
    end

    def hello()
        puts "hello,ruby";
        puts "id = ",@cust_id;
        puts "name: ",@cust_name;
        # puts @@count;
    end

    # 定义有参数的方法
    def say(name)
        puts @@count;
        puts @cust_addr;
        print "your name: ",name,"\n";
        @@count += 1
       puts "Total number of customers: #@@count"
    end

end

# 实例化对象
cust = Customer.new(1,"daheige","china");

cust.hello();
cust.say("daheige");

cust2 = Customer.new(2,"xiaoming","china");
cust2.hello();
cust2.say("cc");
