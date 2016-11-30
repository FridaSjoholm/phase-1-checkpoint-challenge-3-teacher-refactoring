require_relative 'high_five'
class Person
  include HighFiveable
  attr_reader :age
  attr_accessor :name
  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end
end
