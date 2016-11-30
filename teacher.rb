require_relative 'person'

class Teacher < Person
  attr_accessor :phase, :salary

  def initialize(options={})
    super
    @phase = 3
  end

  def set_phase(num)
    self.phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    response = ""
    if rating > self.target_rating
      response = "Yay, I'm a great employee!"
      receive_raise(self.target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

end
