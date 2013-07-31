require './app/controllers/default_controller'
class DefaultModel
  def self.userID(theName)
    if theName == "James" then
      1
    else
      nil
    end
  end
end
