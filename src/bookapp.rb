#Main app document that brings all pages together
#This will be run for the user from the bash script file, or set up to take command line input, as outlined in the README

#Gems required:
require "tty-prompt"
require "colorize"
require "tty-font"
require "artii"
require "pastel"

#Local files required:
require_relative ("files/review.rb")
require_relative ("files/recommendationquiz.rb")
require_relative ("files/readinglist.rb")
require_relative ("files/styling.rb")
require_relative ("files/errorhandling.rb")

#Define a method to get user input for new review
#Include sub loop for the validation of input, using the invalid_rating_input method from ./errorhandling.rb
#Will continue to ask for input for rating, along with prompt message
#Print format of review defined in review class
#Add .blue styling to the printed text as per notes for this class in the styling.rb file
def new_review 
    puts "Let's start a new book review!".blue
    puts "Please only enter words in text format and your review as a number!".blue
    puts "Your book review details".blue
    puts "Enter your book title: ".blue
    title = STDIN.gets.to_s
    sleep 1
    puts "Enter your rating (out of 5): ".blue
    rating = STDIN.gets
    stars = invalid_rating_input(rating)
    if stars == nil
        loop do
            puts "Enter your rating (out of 5): ".blue
            rating = STDIN.gets
            stars = invalid_rating_input(rating)
            break if stars == 1 or stars == 2 or stars == 3 or stars == 4 or stars == 5 
        if stars == 1
            rating == 1
        if stars ==2
            rating == 2
        if stars == 3
            rating == 3 
        if stars == 4
            rating == 4
        else stars == 5 
            rating == 5
        end
        end
        end
        end
        end
    end
    sleep 1
    puts "Enter your review: ".blue 
    review = STDIN.gets.to_s
    sleep 1
    new_review = Reviews.new(title, rating, review)
#The review based off the user input will be printed to the screen using the to_s method from ./review.rb
#This same format and input for the variables will then be written to a .txt file to be accessed again later
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

#Define a method to access the .txt file containing the written reviews and prints these to the terminal in their formats
#Use the .split method so that information still has original formatting and is meaningful output
def display_all_reviews
    all_reviews = File.read("reviews.txt").split
    puts all_reviews
end

#Define a method that allows the user to wipe the .txt file of all entered reviews
#Print message to confirm
def delete_all_reviews
    all_reviews = File.write("reviews.txt", " ")
    puts "You deleted all your reviews :(".red
end

#Define a method to open the reading list
#Take user inputs and print result using format defined by to_s method in readinglist.rb
#Add .green styling as per notes for this class in the styling.rb file
def add_list
    puts "This is your reading list, where you can add all the titles you want to read!".green
    puts "Please only enter text words, so your entry makes sense!".green
    puts "Let's add some titles...".green
    sleep 1
    puts "What is the book title?".green
    title = gets.chomp.to_s
    sleep 1
    puts "What is the book author?".green
    author = gets.chomp.to_s
    list_entry = List.new(title, author) 
    puts list_entry.to_s
#Prints formatted entry to screen, then write to a txt file in the same format
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

#Define method to display all current entries in the readinglist.txt file
#Use .split method so that entries maintain their format and are printed in a meaningful output
def display_reading_list
    reading_list = File.read("readinglist.txt").split
    puts reading_list
end

#Define method to allow the user to delete all current entries in the readinglist.txt file
#Print message to confirm action
def delete_all_list
    reading_list = File.write("readinglist.txt", " ")
    puts "You cleared your reading list :(".red
end

#Define a method to start recommendation quiz, using the run_quiz method defined in recommendationquiz.rb
#Welcome to the quiz statement and input specification
#Add .red styling to the text as per notes for this class in the styling.rb file
def recommendation_quiz
    puts "Welcome to the book recommendation quiz!".red
    puts "Please answer the following questions by typing 'a' or 'b'".red
    new_quiz = Quiz.new($questions)
end

#Methods for menus
#Define a method to call the review menu, which is accessed by the user once they have completed a new review
#Use TTY-prompt to manage the menu function
def review_menu
    answer = $prompt.select("Would you like to add another review?",["Yes", "No", "View All Reviews", "Delete All Reviews"])
    answer
end

#Define a method to call the list menu, which is accessed by the user once they have completed a new list entry or after the recommendation quiz
#Use TTY-prompt to manage the menu function
def list_menu
    answer = $prompt.select("Would you like to add more list items?",["Yes", "No", "View List", "Delete All List Entries"])
    answer
end

#Define a method to call the recommendation menu, which is access by the user once they have completed the quiz and will allow them to return to main menu or add a new list entry
#Use TTY -prompt to manage the menu function
def recommendation_menu
    answer = $prompt.select("Now that you've seen some recommendations, would you like to add to your Reading List?", ["Yes", "No"])
    answer
end

#Define a method for the main menu
#This will be the first interaction the user has with the app and will have the option to access each of the features or directly exit the app
$prompt = TTY::Prompt.new
def main_menu
    answer = $prompt.select("Please select an option:",["New Book Review", "Reading List", "Take Recommendation Quiz", "Exit App"])
    answer
end

#Define a method for main help to manage command line argument '--help'
def main_help
    puts "Hello!"
    puts "If you're having trouble downloading or running the app, please refer to the provided README.md"
    puts "If you haven't read that first, the app may not execute properly"
    exit
end

#Define a conditional statement to run the main_help method if the correct command line argument is used
if ARGV.first == '--help'
    main_help
end

#Define a conditional statement to take the user's name from a command line argument and use throughout the app experience
if ARGV.length > 0
    name = ARGV[0]
else
   name= "User"
   end
#Establish initial welcome interaction by running the main_welcome and main_menu methods
#From this point, for each option in the while loop, there is a sub menu created by using the menu method for that class and invoking the correct order of functional methods
#As per the control flow diagram in the README, the succession of options and loops within those options are also established
#By previously defining each of the methods, above or in the corresponding files, it allows for that method to simply be invoked rather than rewritten each time it is needed
#The last option is given as the Exit App option, which will confirm the exit and print a goodbye message to the user
main_welcome
puts "Hello #{name}, this is the BookShelf App!".light_yellow
puts "From the options below you, #{name}, can choose to write a book review, add an item to your reading list or take a quiz for a recommendation".light_yellow
puts "Of course, if you wish to leave at any time, simply choose the Exit App option".light_yellow
main_menu
option = ""
while option !="Exit App"
    option = main_menu
    case option
    when "New Book Review"
        reviews_heading
        sleep 1
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
        sleep 1
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
                    puts "Back to main menu it is!".magenta
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
                    puts "Back to main menu it is!".magenta
                end
            end
    else
        puts "Sad to see you go #{name}. See you next time!".light_yellow
        next
    end
    print "Press enter to continue..."
    gets
    system "clear"
end