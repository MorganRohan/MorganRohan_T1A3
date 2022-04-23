# Book Reviews
# Class: reviews
# Objects: title, rating, review

class Reviews
    attr_accessor :title, :rating, :review
    def initialize(title, rating, review)
        @title = title
        @rating = rating
        @review = review
    end

#Define a method to print the user input information back on the screen in a formatted and meaningful way
#Variables @title, @rating and @review are gathered by the new_review method and then formatted here
    def to_s
        puts "====================="
        puts "  Your Book Review"
        puts "====================="
        puts "Book Title: #{@title}"
        puts "====================="
        puts "Rating: #{@rating}/5"
        puts "====================="
        puts "Review: #{@review}"
    end 
end

