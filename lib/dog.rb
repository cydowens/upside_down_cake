class Dog
  attr_reader :name, :breed, :health
  
  def initialize(attributes)
    @name  = attributes[:name]
    @breed = attributes[:breed]
    @health   = attributes[:health]
  end

  def speak
    "Woof"
  end
end