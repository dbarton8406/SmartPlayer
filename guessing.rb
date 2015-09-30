require "pry"
require "./Human"
require "./Random"
require "./Counting"
require "./Smart"

class GuessingGame
  def initialize(player)
    @player = player
  end

  def play
    number = rand(1..100)
    guess = @player.get_guess
    count = 1
    until guess == number
      if guess > number
        @player.update_logic(true, guess)
        puts "Too High!"
      else
        @player.update_logic(false, guess)
        puts "Too Low!"
      end
      guess = @player.get_guess
      count += 1
    end
    puts "You win! Took #{count} tries. The number was #{number}."
  end
end

game = GuessingGame.new(SmartPlayer.new)

puts "I hate this game!!!"

GuessingGame
