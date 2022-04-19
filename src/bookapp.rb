#Main app document that brings all pages together
#Gems required:
require "tty-prompt"
require "colorize"


#Local files required:
require_relative ("./review.rb")
require_relative ("./recommendationquiz.rb")
require_relative ("./readinglist.rb")

#Define a method to get input for new review
#Print format of review defined in review class
def new_review 
    puts "Your book review details"
    sleep 1
    puts "Enter your book title: "
    title = gets.chomp.to_s
    sleep 1
    puts "Enter your rating (out of 5): "
    rating = gets.chomp.to_s
    sleep 1
    puts "Enter your review: "
    review = gets.chomp.to_s
    sleep 1
    new_review = Reviews.new(title, rating, review)
    puts new_review.to_s
    open("reviews.txt", 'a') {|f|
    f << "\n===============\n"
    f << "Your Book Review\n"
    f << "===============\n" 
    f << "Title: #{title}\n"
    f << "===============\n" 
    f << "Rating: #{rating}/5 \n"
    f << "===============\n" 
    f << "Comments: #{review}\n"
    f << "==============="
}
end

def display_all_reviews
    all_reviews = File.read("reviews.txt").split
    puts all_reviews
end

#Define a method to open the reading list
#Run new list item method from readinglist file 
#Take user inputs and print result
def add_list
    puts "Your Current Reading List!"
    puts "Let's add some titles..."
    sleep 1
    puts "What is the book title?"
    title = gets.chomp.to_s
    sleep 1
    puts "What is the book author?"
    author = gets.chomp.to_s
    list_entry = List.new(title, author) 
    puts list_entry.to_s
    open("readinglist.txt", 'a') {|f|
    f << "\n===============\n"
    f << "New Book To Read!\n"
    f << "===============\n" 
    f << "Title: #{title}\n"
    f << "===============\n" 
    f << "Author: #{author} \n"
    f << "===============\n" 
}
end 

def display_reading_list
    reading_list = File.read("readinglist.txt").split
    puts reading_list
end

#Define a method to start recommendation quiz
#Welcome to the quiz statement and input specification
def recommendation_quiz
    puts "Welcome to the book recommendation quiz!"
    puts "Please answer the following questions by typing 'a' or 'b'"
    new_quiz = Quiz.new($questions)
end

def review_menu
    answer = $prompt.select("Would you like to add another review?",["Yes", "No", "View All Reviews"])
    answer
end

def list_menu
    answer = $prompt.select("Would you like to add more list items?",["Yes", "No", "View List"])
    answer
end

$prompt = TTY::Prompt.new
def main_menu
    answer = $prompt.select("Please select an option:",["New Book Review", "Reading List", "Take Recommendation Quiz", "Exit App"])
    answer
end

system "clear"
puts "Welcome to the Book App"
option = ""
while option !="Exit App"
    option = main_menu
    case option
    when "New Book Review"
        new_review
        while option!= "No"
            option = review_menu
            case option
                when "Yes"
                    new_review
                when "View All Reviews"
                    display_all_reviews
                else
                    puts "Back to main menu it is!"
                end
            end 
    when "Reading List"
        add_list
        while option!= "No"
            option = list_menu
            case option
                when "Yes"
                    add_list
                when "View List"
                    display_reading_list
                else
                    puts "Back to main menu it is!"
                end
            end
    when "Take Recommendation Quiz"
        quiz = recommendation_quiz
        puts quiz.run_quiz($questions)
        puts "Now that you've gotten recommendations, would you like to add a new title to your Reading List?"
        while option!= "No"
            option = list_menu
            case option
                when "Yes"
                    add_list
                else
                    puts "Back to main menu it is!"
                end
            end
    else
        puts "Sad to see you go. See you next time!"
        next
    end
    print "Press enter to continue..."
    gets
    system "clear"
end