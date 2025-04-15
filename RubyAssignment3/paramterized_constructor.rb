class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  def display_info
    puts "name - #{@name}, age - #{@age}"
  end

end

user1 = User.new("Kunal", 22)
user1.display_info
