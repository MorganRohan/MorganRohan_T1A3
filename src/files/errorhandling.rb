#Page for error handling methods

class InvalidInputError < StandardError
    attr_reader :action
end

#Invalid input error handling for book review
#Whilst it is set up to type coerce the input to a string to print, input types are preferred for validity of review
#Title and comments will allow for input type of string, whereas rating will be given input type of integer
#The returned value will prompt the new_review method to either continue from the rating and get the review information
# or it will loop through until a valid entry has been inputted
def invalid_rating_input(rating)
    case rating.to_i
    when 1
        return 1
    when 2
        return 2
    when 3
        return 3
    when 4
        return 4
    when 5
        return 5
    else
        puts "Invalid input, please only put a number between 1-5"
        return nil
    end
end

#Invalid input error handling for recommendation quiz
#Set up to only deal with either 'a' or 'b' options and will prompt user to do so
#If invalid, print error message to the screen and return a nil value
# nil value with be used within the run_quiz method to loop through that question until a valid response is entered
def validate_input(answer)
    case answer[0]
    when "a"
        return "a"
    when "b"
        return "b"
    else 
        puts "Invalid input, please only use 'a' or 'b' to answer!"
        return nil
    end
end 