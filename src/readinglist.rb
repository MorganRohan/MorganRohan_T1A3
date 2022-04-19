# Reading List
# Class: list
# Objects: title, author
class List
  attr_accessor :title, :author
  def initialize(title, author)
    @title = title
    @author = author
  end

  def to_s
    return "#{@title}: by #{@author}"
  end

end