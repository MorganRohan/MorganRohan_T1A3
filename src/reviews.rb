#Main page for code to go through the review creation process
#Class: review
#Objects: book title, rating, comments
class Reviews
    def initialize(title, rating, comments)
      @title = title
      @rating = rating
      @comments = comments
    end

    def welcome
        puts "Welcome to the Review Page"
    end

    
end


#Book title: ask for user input
