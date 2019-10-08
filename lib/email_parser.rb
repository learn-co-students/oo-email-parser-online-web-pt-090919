# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = (emails)
  end
  
  def parse
    emails = @emails.split(/[\s,',', ]/)
    emails = emails.reject {|word| word == ""}
    new_emails = []
    emails.each do |email|
      if new_emails.include?(email)
      else new_emails << email
      end
    end
    new_emails
  end
  
  
end