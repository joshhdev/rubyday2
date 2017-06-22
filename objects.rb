# we are going to make objects
class Dinosaur
  # attr_reader :name #reader/getter
  # attr_writer :name #writter/setter
  attr_accessor :name
  #initialize is called on instance instantiation
  def initialize(name, arm_length)
    @name = name
    @arm_length = arm_length
    @color = 'red'
    @predator = true
    @timePeriod = 'jurassic'
    @favoriteFood = 'Teradactyl'
  end
  
  #set @name to be whatever name is passed in
  # this is a setter
  # def name=(name)
  #   @name = name
  # end
  
  #getter
  # def name
  #   @name
  # end
  
  def eatFavoriteFood
    puts 'I just ate a ' << @favoriteFood << ' the whole thing...'
  end
  
  def makeSound
    puts 'ROAAAR'
  end
  
end

dino = Dinosaur.new 'Josh', '7 inches'
puts dino.name
#redefines name
puts dino.name=('Harris')
puts dino.inspect
dino.eatFavoriteFood
dino.makeSound

class Computer
  def initialize(brand,model,cpu,storage)
    @brand = brand
    @model = model
    @cpu = cpu
    @storage = storage
  end
end

comp = Computer.new 'Apple', 'Macbook Air', 'i5', '128gbSS'
puts comp.inspect

class Calculator
  def self.add(n,m)
    n + m
  end
  def self.multiply(n,m)
    n * m
  end
end

# wrong way!!!
## puts Calculator.new add 3,2
### Correct way
puts Calculator.add 3,2
puts Calculator.multiply 3,2

class Info
  def initialize(random)
    @random = random
  end
  def data
    @content = '123456789'
    more = '987654321'
  end
  def content
    @content
  end
end

info = Info.new '123'
puts info.inspect
info.data
puts info.content

