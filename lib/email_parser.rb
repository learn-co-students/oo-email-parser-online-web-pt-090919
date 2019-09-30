# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser 
  
  attr_accessor :email_list

  def initialize(email_list)
    @email_list = email_list
  end
  
  def parse
    consider_it_parsed = @email_list.split(' ').collect do |val|
      if val[-1] == ',' || val[-1] == ' '
        val = val[0...-1]
      end
      val
    end.uniq
  end

end
