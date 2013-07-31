require './app/controllers/reversestring_controller'
require 'colorize'

class ReverseStringView
  def self.askString
    puts "What string would you like to reverse?"
    gets.chomp
  end
  def self.verify
    if ReverseStringController.string.empty?
      puts "You didn't enter a string!"
      exit
    end
  end
  def self.reverse(stringToReverse)
    puts "Your string: #{ReverseStringController.string.green}"
    puts "Your reversed string: #{ReverseStringController.string.reverse.red}"
  end
end
