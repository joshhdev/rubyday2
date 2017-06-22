class Warrior
  attr_accessor :health
  attr_accessor :attack

  def initialize
    @health = 100
    @attack = 25
  end
  
  def attack(enemy)
    enemy.health = enemy.health - @attack
  end
  
end

class Enemy
  attr_accessor :health
  attr_accessor :attack

  def initialize
    @health = 100
    @attack = 25
  end
  
  def attack(warrior)
    warrior.health = warrior.health - @attack
  end
  
end

warrior = Warrior.new
enemy = Enemy.new

init = 'ARE YOU READY FOR BATTLE?'
puts init
response = gets.chomp
if response == 'yes'
  puts 'ATTACK OR DEFEND?'
  response = gets.chomp
  if response == 'attack'
    puts 'slahh uh clic clink rawwhhhh'
    warrior.attack enemy
    puts 'HONOR'
    if rand(2) == 0
      puts 'ENEMY DEFENDS'
      puts 'YOUR HEALTH ' << warrior.health.to_s
      puts 'ENEMY HEALTH ' << enemy.health.to_s
    else
      puts 'rawwhhh'
      puts 'ENEMY ATTACKS'
      enemy.attack warrior
      puts 'YOUR HEALTH ' << warrior.health.to_s
      puts 'ENEMY HEALTH ' << enemy.health.to_s
    end
  else
    puts 'COWARD'
  end
else
  puts 'COWARD'
end