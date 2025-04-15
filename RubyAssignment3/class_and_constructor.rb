class Josh
  def initialize(state = "High")
    @state = state
  end

  def say
    puts "How's the Josh"
    puts "#{@state} sir"
  end
end

obj = Josh.new
obj.say