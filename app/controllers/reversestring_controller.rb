# No model at the moment. Uncomment if you generate a controller!
# require './app/models/reversestring'
require './app/views/reversestring'
class ReverseStringController
  class << self
    #Add your variables here!
    attr_accessor :name, :string
  end
  @name = "James!"
  def self.main
    # Ask for a string and assign it
    @string = ReverseStringView.askString
    # Check if the user entered a string
    ReverseStringView.verify
    # (If this is run, the verification has passed)
    ReverseStringView.reverse(@string)
  end
end
