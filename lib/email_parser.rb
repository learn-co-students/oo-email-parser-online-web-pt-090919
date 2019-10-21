class EmailParser
 attr_accessor :emails

  def initialize(email)
   @emails = email
 end

  def parse
   emails.delete(',').split.uniq
 end

  end 


email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)
 
parser.parse