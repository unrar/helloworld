require './app/controllers/default_controller'
require './app/controllers/reversestring_controller'

# Logic
choice = ""
while (choice.empty?) do
  puts "Welcome to HelloWorld. What do you want to do?"
  puts "    1) Have a greeting."
  puts "    2) Reverse a string."
  puts "    3) Insert a name into the database."
  choice = gets.chomp 
end

if (choice == "1") then
  DefaultController.main
elsif (choice == "2") then
  ReverseStringController.main
elsif (choice == "3") then
  DefaultController.insertName
else
  puts "Unknown choice!"
end
