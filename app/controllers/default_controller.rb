require './app/models/default'
require './app/views/main'
require './app/views/insertname'
class DefaultController
  class << self
    #Add your variables here!
    attr_accessor :name, :age, :userid, :nametoinsert
  end
  
  def self.main
    # Don't know the name yet
    @age = 18
    MainView.askName
    # Verify the name
    MainView.verify(@name)
    # Already know the name
    @userid = DefaultModel.getUserID(@name)
    MainView.load
  end

  def self.insertName
    # Don't know @nametoinsert yet
    InsertNameView.askName
    # Verify the name
    InsertNameView.verify(@nametoinsert)
    # In this point, the name isn't either blank or existing in the database
    ## So, let's insert it into the database
    DefaultModel.insertName(@nametoinsert)
  end

end
