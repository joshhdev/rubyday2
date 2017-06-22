class Guitar
  attr_accessor :brand
  def initialize(brand,model)
    @brand = brand
    @model = model
  end
  def play
    puts 'baaa na na bwaaaa na na !!!'
  end
  def info
    puts 'your guitar is a ' << @brand << ' and the model is a ' << @model
  end
end
guitar = Guitar.new 'fender','strat'
puts guitar.inspect
puts guitar.brand
guitar.brand = 'gibson'
puts guitar.brand
puts guitar.inspect
guitar.play
guitar.info