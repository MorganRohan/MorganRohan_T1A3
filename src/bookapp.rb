#Main app document that brings all pages together
#Gems required:
require "tty-prompt"
require "colorize"
require "tty-font"
require "artii"
require "pastel"

#Local files required:
require_relative ("./review.rb")
require_relative ("./recommendationquiz.rb")
require_relative ("./readinglist.rb")
require_relative ("./styling.rb")

#Define a method to get input for new review
#Print format of review defined in review class
def new_review 
    puts "Let's start a new book review!".blue
    puts "Your book review details".blue
    sleep 1
    puts "Enter your book title: ".blue
    title = gets.chomp.to_s
    sleep 1
    puts "Enter your rating (out of 5): ".blue
    rating = gets.chomp.to_s
    sleep 1
    puts "Enter your review: ".blue 
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

def delete_all_reviews
    all_reviews = File.write("reviews.txt", " ")
    puts "You deleted all your reviews :(".red
end

#Define a method to open the reading list
#Run new list item method from readinglist file 
#Take user inputs and print result
def add_list
    puts "This is your reading list, where you can add all the titles you want to read!".blue
    puts "Let's add some titles...".blue
    sleep 1
    puts "What is the book title?".blue
    title = gets.chomp.to_s
    sleep 1
    puts "What is the book author?".blue
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

def delete_all_list
    reading_list = File.write("readinglist.txt", " ")
    puts "You cleared your reading list :(".red
end

#Define a method to start recommendation quiz
#Welcome to the quiz statement and input specification
def recommendation_quiz
    puts "Welcome to the book recommendation quiz!".red
    puts "Please answer the following questions by typing 'a' or 'b'".red
    new_quiz = Quiz.new($questions)
end

def review_menu
    answer = $prompt.select("Would you like to add another review?",["Yes", "No", "View All Reviews", "Delete All Reviews"])
    answer
end

def list_menu
    answer = $prompt.select("Would you like to add more list items?",["Yes", "No", "View List", "Delete All List Entries"])
    answer
end

def recommendation_menu
    answer = $prompt.select("Now that you've seen some recommendations, would you like to add to your Reading List?", ["Yes", "No"])
    answer
end

$prompt = TTY::Prompt.new
def main_menu
    answer = $prompt.select("Please select an option:",["New Book Review", "Reading List", "Take Recommendation Quiz", "Exit App"])
    answer
end

system "clear"
main_welcome
option = ""
while option !="Exit App"
    option = main_menu
    case option
    when "New Book Review"
        reviews_heading
        new_review
        while option!= "No"
            option = review_menu
            case option
                when "Yes"
                    reviews_heading
                    new_review
                when "View All Reviews"
                    display_reviews_heading
                    display_all_reviews
                when "Delete All Reviews"
                    delete_all_reviews
                else
                    puts "Back to main menu it is!".magenta
                end
            end 
    when "Reading List"
        list_heading
        add_list
        while option!= "No"
            option = list_menu
            case option
                when "Yes"
                    list_heading
                    add_list
                when "View List"
                    display_list_heading
                    display_reading_list
                when "Delete All List Entries"
                    delete_all_list
                else
                    puts "Back to main menu it is!"
                end
            end
    when "Take Recommendation Quiz"
        quiz_heading
        sleep 1
        quiz = recommendation_quiz
        puts quiz.run_quiz($questions)
        recommendation_menu
        while option!= "No"
            option = list_menu
            case option
                when "Yes"
                    list_heading
                    add_list
                when "View List"
                    display_list_heading
                    display_reading_list
                when "Delete All List Entries"
                    delete_all_list
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