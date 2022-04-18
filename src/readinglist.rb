# Reading List
# Class: list
# Objects: title, author
class List
  attr_accessor :title, :author
  def initialize(title, author, books, list)
    @title = title
    @author = author
    @books = books
    @list = list
  end

  def to_s
    return "#{@title}: by #{@author}"
  end

end