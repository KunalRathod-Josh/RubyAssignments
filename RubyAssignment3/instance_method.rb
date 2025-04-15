class InstanceMethod
  def say_hello(name)
    puts "Hello #{name}"
  end
end

obj = InstanceMethod.new
obj.say_hello("Kunal")