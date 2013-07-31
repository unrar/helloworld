require './app/controllers/default_controller'
class InsertNameView
  def self.askName
    puts "What name would you like to add to the database?"
    DefaultController.nametoinsert = gets.chomp
  end
  def self.verify(stringToVerify)
    if (stringToVerify.empty?) then
      puts "The name is empty!"
      exit
    end
    # Verify if it exists in the database
    if (DefaultModel.getUserID(stringToVerify) != "Unknown") then
      puts "The name already exists in the database."
      puts "Aborting...".red
      exit
    end
  end


  def self.done(name)
    puts "The name #{name.blue} has been successfully inserted to the database. ID: #{DefaultModel.getUserID(name).to_s.red}."
  end
end
