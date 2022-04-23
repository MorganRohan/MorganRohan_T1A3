# Reading List
# Class: list
# Objects: title, author
class List
  attr_accessor :title, :author
  def initialize(title, author)
    @title = title
    @author = author
  end

  #Define a method to print the user input to the screen in a meaningful format
  #Variables @title and @author are obtained through user input in the add_list method
  def to_s
    return "#{@title}: by #{@author}"
  end

end