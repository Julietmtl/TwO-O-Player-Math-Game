class Question
  attr_accessor :answer

  def initialize(player)
    no1 = rand(1..20)
    no2 = rand(1..20)
    @answer = no1 + no2
    puts "#{player}: What does #{no1} plus #{no2} equal?"
  end

end