require './app/controllers/default_controller'
require 'sqlite3'
class DefaultModel
  def self.getUserID(theName)
    begin
      # Connect to database
      db = SQLite3::Database.open('./db/users.db')
      # Try and get the ID
      id = db.execute("SELECT id FROM Users WHERE name='#{theName}';").join('').to_i
      id == 0 ? "Unknown" : id
    rescue
      puts "Something went wrong while selecting from the database. Aborting..."
    ensure
      db.close
    end
  end

  # Insert
  def self.insertName(theName)
    begin
      # Connect to database
      db = SQLite3::Database.open('./db/users.db')
      # Try to insert it
      db.execute("INSERT INTO Users(name) VALUES('#{theName}');")
      InsertNameView.done(theName)
    rescue
      puts "Something went wrong while inserting to the database. Aborting..."
    ensure
      db.close
    end
  end
end
