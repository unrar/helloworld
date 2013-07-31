require './app/controllers/default_controller'
require 'colorize'

class MainView
  ## Method to verify is the name is blank
  def self.verify(stringToVerify)
    if stringToVerify.empty?
      puts "The name is empty!"
      exit
    end
  end
  ## Method to ask for the name.
  def self.askName
    puts "What's your name?"
    name = gets.chomp
    DefaultController.name = name
  end

  def self.load
    puts "Hello, hello #{DefaultController.name.blue}!"
    puts "#{DefaultController.name.blue}, you're #{DefaultController.age.to_s.light_blue}."
    puts "Your user ID is: #{DefaultController.userid.to_s.light_red}."
  end
end
