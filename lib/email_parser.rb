# Build class EmailParser that accepts a string of unformatted emails
# Parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email, :parse
  
  def initialize(email)
    @email = email
  end
  
  def parse
    # parse CSV emails or/and space delimited emails
    @email = @email.split /\s|, / #split on white space or (|) ", "
    # return array of unique emails
    @email.uniq
  end
end