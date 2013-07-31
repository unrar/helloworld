require './app/controllers/default_controller'
class InsertNameView
  def self.askName
    puts "What name would you like to add to the database?"
    DefaultController.nametoinsert = gets.chomp
  end
  def self.verify(stringToVerify, checkdb=false)
    if (stringToVerify.empty?) then
      puts "The input is empty!"
      exit
    end
    # Verify if it exists in the database (if checkdb == true)
    if (checkdb == true) then
      if (DefaultModel.getUserID(stringToVerify) != "Unknown") then
        puts "The name already exists in the database."
        puts "Aborting...".red
        exit
      end
    end
  end

  def self.askAge
    puts "How old is #{DefaultController.nametoinsert}?"
    DefaultController.agetoinsert = gets.chomp
  end

  def self.done(name)
    puts "The name #{name.blue} has been successfully inserted to the database. ID: #{DefaultModel.getUserID(name).to_s.red}."
  end
end
