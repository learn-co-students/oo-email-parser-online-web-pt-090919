# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  
  def parse
    return_array = []
    x = @email_addresses.split(/,\s|\s/)
    x.each do |x|
      return_array.push(x) if return_array.include?(x) == false
    end
    return_array
  end
  
end