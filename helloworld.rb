require './app/controllers/default_controller'
require './app/controllers/reversestring_controller'

# Logic
choice = ""
while (choice.empty?) do
  puts "Welcome to HelloWorld. What do you want to do?"
  puts "    1) Have a greeting."
  puts "    2) Reverse a string."
  choice = gets.chomp 
end

if (choice == "1") then
  DefaultController.main
elsif (choice == "2") then
  ReverseStringController.main
else
  puts "Unknown choice!"
end
