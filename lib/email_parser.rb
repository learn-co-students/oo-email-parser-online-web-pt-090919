require "pry"
class EmailAddressParser
  
  attr_accessor :email 
  
  def initialize(email)
    @email = email
  end
  
  def parse
    @email = @email.gsub(/[\s,]/, " " ).split()
    @email.uniq
  end
#binding.pry
end 
