require './app/models/default'
require './app/views/main'
class DefaultController
  class << self
    #Add your variables here!
    attr_accessor :name, :age, :userid
  end
  
  def self.main
    # Don't know the name yet
    @age = 18
    MainView.askName
    # Verify the name
    MainView.verify(@name)
    # Already know the name
    @userid = DefaultModel.userID(@name)
    @userid ||= "Unknown"
    MainView.load
  end

end
