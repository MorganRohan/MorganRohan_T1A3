#Review Method
#Class: review
#Objects: book title, rating, comments
class Reviews
    attr_accessor :title, :rating, :comments 
    @@all_reviews = 0
    def initialize(title)
      @title = title
      @rating = []
      @comments = []
      @@all_reviews += 1
    end

    def self.all_reviews
        @@all_reviews
    end

    def rating(stars)
        @rating << stars
    end

    def comments(comments)
        @comments << comments
    end

    def display_book_review
        puts "#{@title}"
        puts "#{@rating}"
        puts "Review: #{@comments}"
    end
end

#Book title: ask for user input and store title
#Rating: offers choice of 1-5 rating 
#Comments: space to add comments or more detailed review
puts "Enter your book title: "
title = gets.strip
review = Reviews.new(title)
puts "Choose your rating"
stars = gets.to_i
review.rating(stars)
puts "Enter your review"
comments = gets.to_s
review.comments(comments)
review.display_book_review