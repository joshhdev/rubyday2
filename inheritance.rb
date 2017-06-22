class Animal
  attr_accessor :name
  def getInfo
    puts 'My name is ' << @name
  end
  def leg
    4
  end
end
class Dog < Animal
  def poop
    puts 'I pooped'
  end
  def eatFood
    puts 'Yes I food'
  end
  def bark
    'Barkkkk'
  end
  def getInfo
    super
    puts "this is after super in dog"
  end
end

spot = Dog.new
spot.name = 'Spot'
p spot.bark
spot.getInfo