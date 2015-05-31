class Grandma

  def initialize
    @suspicion = 0
  end

  def raise_suspicion
    @suspicion += 1
  end

  def suspicion_level
    @suspicion
  end

  def attack
    "'The better to eat you with!'\nGrandma opens her giant wolf maw and swallows you whole."
  end

  def cant_hear
    "HUH?! SPEAK UP, SONNY!"
  end

  def can_hear
    year = rand(1900..2015)
    "NO, NOT SINCE #{year}!"
  end

  def cookie
    "Why you're all skin and bones! Here, have another cookie."
  end

  def farewell
    "Good-bye dear. Watch out for wolves on your way home..."
  end
end

def main
  grams = Grandma.new

  puts "You smell a most wonderful smell, and wander into the kitchen."
  puts "You see Grandma pulling hot fresh cookies out of the oven. You look at her unusually hairy ears and say..."

  counter = 0

  while true

    statement = gets.chomp

    if grams.suspicion_level == 5
      puts grams.attack
      break
    elsif statement == 'BYE' && counter == 2
      puts grams.farewell
      break
    elsif statement == 'BYE'
      puts grams.cookie
      counter += 1
    elsif statement == statement.upcase
      counter = 0
      grams.raise_suspicion
      puts grams.can_hear
    else
      counter = 0
      grams.raise_suspicion
      puts grams.cant_hear

    end
  end

  puts 'THE END'
end

main
