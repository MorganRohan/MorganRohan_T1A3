#Separate page for styling elements that can be used in the app
#Kept in a separate file so that some of the headings or other repeatable elements can be established as methods
#This allows for calling a method rather then adding the style to the heading each time (repeatable)

#Gems required
require "tty-font"
require "pastel"
require "artii"
require "colorize"

#Define method for bold main welcome message, which will be user's first impression of the app
#A magenta colour was chosen for this feature
def main_welcome
    font = TTY::Font.new(:doom)
    pastel = Pastel.new
    puts pastel.magenta.on_white(font.write("Welcome to the BookShelf App!"))
end

#Define method for reviews class heading
#A blue colour was chosen for this feature and used throughout elements for consistency
def reviews_heading
    arter = Artii::Base.new
    puts arter.asciify("Book Review!").blue
end 

#Define method for list class heading
#A green colour was chosen for this feature and used throughout elements for consistency
def list_heading
    arter = Artii::Base.new
    puts arter.asciify("Reading List!").green
end 

#Define method for quiz class heading
#A red colour was chosen for this feature and used throughout elements for consistency
#Additional sleep timing was added, along with the background for the last element for a more dramatic effect
def quiz_heading
    arter = Artii::Base.new
    pastel = Pastel.new
    puts arter.asciify("Welcome....").red
    sleep 1
    puts arter.asciify("To....").red
    sleep 1
    puts arter.asciify("The...").red
    sleep 1
    puts pastel.white.on_red(arter.asciify("...Recommendation Quiz!"))
end

#Define method for final message
#A yellow colour was chosen for this feature and is the same used throughout the app for general or main messaging
def exit_message
    arter = Artii::Base.new
    puts arter.asciify("Thank you!").yellow
end

#Define method for display_reviews method heading
#It uses the same blue colour as chosen above for that class
def display_reviews_heading
    arter = Artii::Base.new
    puts arter.asciify("Check Out Your Reviews!").blue
end

#Define method for display_list method heading
#It uses the same green colour as chosen above for that class
def display_list_heading
    arter = Artii::Base.new
    puts arter.asciify("Check Out Your Reading List!").green
end