#Main app document that brings all pages together
#Gems required:
require "tty-prompt"


#Local files required:
require_relative ("./review.rb")
# require_relative ("./recommendationquiz.rb")
# require_relative ("./readinglist.rb")

$prompt = TTY::Prompt.new

def select_option
    answer = $prompt.select("Please select an option:",["New Book Review", "Reading List", "Take Recommendation Quiz", "Exit App"])
    answer
end

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
        print "Take Recommendation Quiz"
    else
        puts "Sad to see you go. See you next time!"
        next
    end
    print "Press enter to continue..."
    gets
    system "clear"
end

            # menu.choice 'New Book Review'
            # menu.choice 'View Reading List'
            # menu.choice 'Take Recommendation Quiz'
            # menu.choice 'Exit'


#     if welcome == 'New Book Review'
#         new_review
#     elseif welcome == 'View Reading List'
#         puts reading_list
#     elseif welcome == 'Take Recommendation Quiz'
#         puts recommendation_quiz
#     else
#         puts "Goodbye! Have a good day"
#     end
# end 





# puts readinglist.print_list