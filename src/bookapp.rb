#Main app document that brings all pages together
#Gems required:
require "tty-prompt"


#Local files required:
require_relative './reviews.rb'


# class MainMenu
#     def run 
#         prompt = TTY::Prompt.new
#         system("clear")
#         welcome = prompt.select("Welcome to the book app!") do |menu|
#             menu.choice 'New Book Review'
#             menu.choice 'View Previous Reviews'
#             menu.choice 'Take Recommendation Quiz'
#             menu.choice 'Exit'
#     end

#     if welcome == 'New Book Review'
#         puts new_review
#     elseif welcome == 'View Previous Reviews'
#         puts previous_reviews
#     elseif welcome == 'Take Recommencation Quiz'
#         puts recommendation_quiz
#     else
#         puts "Goodbye! Have a good day"
#     end
# end 

# book_review = []

# book_review.each do |review|
#     puts Review
# end

# puts "There are currently #{Reviews.all_reviews} book reviews"