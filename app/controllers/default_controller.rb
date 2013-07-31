require './app/models/default'
require './app/views/main'
require './app/views/insertname'
class DefaultController
  class << self
    #Add your variables here!
    attr_accessor :name, :age, :userid, :nametoinsert, :agetoinsert
  end
  
  def self.main
    # Don't know the name yet
    MainView.askName
    # Verify the name
    MainView.verify(@name)
    # Already know the name
    @age = DefaultModel.getUserAge(@name)
    @userid = DefaultModel.getUserID(@name)
    MainView.load
  end

  def self.insertName
    # Don't know @nametoinsert yet
    InsertNameView.askName
    # Verify the name
    InsertNameView.verify(@nametoinsert, true)
    # Ask for the age
    InsertNameView.askAge
    # Verify the age
    InsertNameView.verify(@agetoinsert)
    # In this point, the name isn't either blank or existing in the database
    ## So, let's insert it into the database
    DefaultModel.insertName(@nametoinsert, @agetoinsert)
  end

end
