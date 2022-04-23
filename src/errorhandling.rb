#Page for error handling methods

class InvalidInputError < StandardError
    attr_reader :action
end

#Invalid input error handling for book review
#Whilst it is set up to type coerce the input to a string to print, input types are preferred for validity of review
#Title and comments will allow for input type of string, whereas rating will be given input type of integer
def invalid_rating_input(rating)
    case rating[0]
end

#Invalid input error handling for recommendation quiz
#Set up to only deal with either 'a' or 'b' options and will prompt user to do so
def validate_input(answer)
    case answer[0].downcase
    when "a"
        return "a"
    when "b"
        return "b"
    else 
        puts "Invalid input, please only use 'a' or 'b' to answer!"
        return nil
    end
end 