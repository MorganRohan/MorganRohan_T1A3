#Page for error handling methods

class InvalidInputError < StandardError
    attr_reader: action
end

#Invalid input error handling for book review
#Whilst it is set up to type coerce the input to a string to print, input types are preferred for validity of review
#Title and comments will allow for input type of string, whereas rating will be given input type of integer
def invalid_titlereview_input
    begin
        if title != "" || review != ""
            raise InvalidInputError, "Invalid input, please only enter valid English words"
        end
    rescue InvalidInputError => e 
        puts e
    end
end

#Invalid input error handling for recommendation quiz
#Set up to only deal with either 'a' or 'b' options and will prompt user to do so
def invalid_quiz_input()
    being
        if answer != "a" || answer != 'b'
            raise InvalidInputError, "Invalid input, please only put either 'a' or 'b'
        end
    rescue InvalidInputError => e
        puts e
    end
end

 