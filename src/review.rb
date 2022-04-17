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

    def to_s
        puts "  Your Book Review"
        puts "====================="
        puts "Book Title: #{@title}"
        puts "====================="
        puts "Rating: #{@rating}/5"
        puts "====================="
        puts "Review: #{@review}"
    end
end