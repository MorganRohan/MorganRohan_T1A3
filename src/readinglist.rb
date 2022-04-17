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
        return "#{@title}: #{@author}"
    end
    def print_list
        @list.each do |entry|
            list
        end
    end
end

def reading_list
    puts "Would you like to add a new item (y/n)?"
    newitem = gets.chomp.to_s
    while newitem == "y"
      readinglist = Hash.new
      puts "Enter book title and author name"
      readinglist[:book1] = gets.chomp
    end 
    if readinglist.hsh.keys.count == 1
      puts "The book added to list was:"
      readinglist.each do |key, value|
      puts "#{key}: #{value}"
      end
    else
      puts "These books were added to list:"
      readinglist.each do |key, value|
      puts "#{key}: #{value}"
      end 
    end
end

list = List.new(title, author)
list.reading_list