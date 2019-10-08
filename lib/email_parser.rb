class EmailParser
  attr_accessor :parse

  def initialize(emails)
    @emails = emails 
  end

  def parse
    @emails.split(/[, ]/).map(&:strip).uniq.delete_if {|t| t == ""}
  end

en