# Reading List
# Class: list
# Objects: title, author
class List
  attr_accessor :title, :author
  def initialize(title, author)
    @title = title
    @author = author
  end


  def list_builder(title, author)
    list = Hash.new
    title.each_with_index do |title, author|
      hash[title] = hash[author]
    puts list
    end
  end
  
end