class Zoo
  attr_accessor :exhibits
  attr_accessor :addAnimal
  def initialize
    @exhibits = []
  end
  def addAnimal(animal)
    @exhibits.push(animal)
  end
end

class Animal
  attr_accessor :breathing
  attr_accessor :run
  def breathing
    true
  end
  def run
    puts 'duh du duh du'
  end
  def kill
    puts 'I am a killer?'
  end
end

class Lion < Animal
  def kill
    super
    puts 'yess hahaha'
  end
end

class Bear < Animal
  def bear
    @location = 'forest'
    puts 'grwwwwwwaaaa I am a bear'
  end
end

class Jungle < Zoo
  def lion
    @location = 'jungle'
    puts 'ROARR I am a lion'
  end
end

class Forest < Zoo
  def bear
    @location = 'forest'
    puts 'grwwwwwwaaaa I am a bear'
  end
end

zoo = Zoo.new
lion = Lion.new
bear = Bear.new
lion.kill
zoo.addAnimal lion
zoo.addAnimal bear
puts zoo.exhibits