#Main app document that brings all pages together
#Gems required:
require "tty-prompt"
require "colorize"


#Local files required:
require_relative ("./review.rb")
require_relative ("./recommendationquiz.rb")
# require_relative ("./readinglist.rb")

$prompt = TTY::Prompt.new

def select_option
    answer = $prompt.select("Please select an option:",["New Book Review", "Reading List", "Take Recommendation Quiz", "Exit App"])
    answer
end

#Define a method to get input for new review
#Print format of review defined in review class
def new_review 
    puts "Your book review details"
    puts "Enter your book title: "
    title = gets.chomp
    puts "Enter your rating (out of 5): "
    rating = gets.chomp
    puts "Enter your review: "
    review = gets.chomp
    book_review = Reviews.new(title, rating, review)
end

#Define a method to open the reading list
#Run new list item method from readinglist file 
#Take user inputs and print result
def view_list
    puts "Your Current Reading List!"
    #displays stored list
    puts "Let's add some titles..."
end 

#Define a method to start recommendation quiz
#Welcome to the quiz statement and input specification
def recommendation_quiz
    puts "Welcome to the book recommendation quiz!"
    puts "Please answer the following questions by typing 'a' or 'b'"
    new_quiz = Quiz.new($questions)
end

system "clear"
puts "Welcome to the Book App"
option = ""
while option !="Exit App"
    option = select_option
    case option
    when "New Book Review"
        review = new_review
        puts review.to_s
    when "Reading List"
        print "Reading List"
    when "Take Recommendation Quiz"
        quiz = recommendation_quiz
        puts quiz.run_quiz($questions)
    else
        puts "Sad to see you go. See you next time!"
        next
    end
    print "Press enter to continue..."
    gets
    system "clear"
end