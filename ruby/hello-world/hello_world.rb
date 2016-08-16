#!/usr/bin/ruby
class HelloWorld
  def self.hello(name = "World")
    @name = name
    "Hello, #@name!"
  end
end
#HelloWorld.hello
#HelloWorld.hello('Alice')
#HelloWorld.hello('Bob')
#HelloWorld.hello('Lucian')
