class Calculator
  def add(a,b)
    puts a + b
  end
  def mult(a,b)
    puts a * b
  end
  def subtract(a,b)
    puts a - b
  end
  def divide(a,b)
    puts a / b
  end
end
calc = Calculator.new
# calc.add 3,4
# calc.mult 3,4
# calc.subtract 3,4
# calc.divide 3,4

class Elevator
  attr_accessor :floor
  def initialize
    @floor = 0
  end
  def interact
    current
    puts 'what floor would you like to go to?'
    response = gets.chomp
    if response.to_i > 0
      up(response)
    else
      down(response)
    end
  end
  def current
    if floor == 0
      puts 'your currently on the first floor'
    else
      puts 'WELCOME TO OUR FAAAAAAANTASTIC FLOOR...' << @floor.to_s
    end
    puts 'Hello what floor would you like to go to?'
    response = gets.chomp
    if response.to_i > 0
      up(response)
    else
      down(response)
    end
  end
  def up(request)
    if (request.to_i) > 12
      puts 'we dont have floors above the twelth'
    else
      @floor = request.to_i
      current
    end
  end
  def down(request)
    if (request.to_i) < 0
      puts 'yaa crazy?? we don\'t hav no basement herrr'
    else
      @floor = request.to_i
      current
    end
  end
  def greeting
    puts 'WELCOME TO OUR FAAAAAAANTASTIC FLOOR'
  end
end
elevator = Elevator.new
elevator.interact