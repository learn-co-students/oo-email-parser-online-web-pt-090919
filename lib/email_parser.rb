class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    parsed_emails = []
    if @emails.include?(" ") && @emails.include?(",")
      @emails.split(", ").each do |string|
        if string.include?(" ")
          parsed_emails << string.split(" ")
        else
          parsed_emails << string
        end
      end
    elsif @emails.include?(" ")
      parsed_emails << @emails.split(" ")
    elsif @emails.include?(", ")
      parsed_emails << @emails.split(", ")
    else
      parsed_emails << @emails
    end
    parsed_emails.flatten.uniq
  end
  
end

# The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
