#Separate page for styling elements that can be used in the app
#Kept in a separate file so that some of the headings or other repeatable elements can be established as methods
#This allows for calling a method rather then adding the style to the heading each time (repeatable)

#Gems required
require "tty-font"
require "pastel"
require "artii"
require "colorize"

def main_welcome
    font = TTY::Font.new(:doom)
    pastel = Pastel.new
    puts pastel.magenta.on_white(font.write("Welcome to the BookShelf App!"))
end

def reviews_heading
    arter = Artii::Base.new
    puts arter.asciify("Book Review!").blue
end 

def list_heading
    arter = Artii::Base.new
    puts arter.asciify("Reading List!").green
end 

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

def exit_message
    arter = Artii::Base.new
    puts arter.asciify("Thank you!").yellow
end

def display_reviews_heading
    arter = Artii::Base.new
    puts arter.asciify("Check Out Your Reviews!").blue
end

def display_list_heading
    arter = Artii::Base.new
    puts arter.asciify("Check Out Your Reading List!").green
end