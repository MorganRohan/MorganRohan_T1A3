# Recommendation Quiz
# Class: Quiz
# Objects: prompt, score
require_relative ("./errorhandling.rb")

class Quiz
 attr_accessor :prompt, :score
 def initialize(prompt)
    @prompt = prompt
    @score = score
 end

    q1 = "Which setting sounds the best?\n (a) On a planet in an alternate reality, maybe there's spaceships zooming by\n (b) Historical, like Regency Era London, with carriages"   
    q2 = "If you were a main character, who would you want to be?\n (a) A lone gunslinger type, out for retribution\n (b) A Viscount looking to find a wife"
    q3 = "You have to pick only one:\n (a) A Journey \n (b) Romance"
    q4 = "Which of these is your favourite colour?\n (a) Black\n (b) Pink"
    q5 = "Do you prefer:\n (a) An epic story lasting multiple books\n (b) A story that has a happy ending and is all wrapped up in one book"

    $questions = [
        Quiz.new(q1),
        Quiz.new(q2),
        Quiz.new(q3),
        Quiz.new(q4),
        Quiz.new(q5)
    ]

    questions = $questions

    def run_quiz(questions)
        answer = []
        score = 0
        for question in questions
            puts question.prompt
            answer = STDIN.gets.strip
            response = validate_input(answer)
            if response == nil
                loop
                    puts question.prompt
                    answer = STDIN.gets.strip
                    validate_input(answer)
                    break if response == "a" or response == "b"
                    if response == "a"
                        score +=1
                    if response == "b"
                        score +=0
                    end
                end
            end
            if response == "a"
            score +=1
            if response == "b"
            score +=0
            end
        end
    end
    if score >= 3
        puts "You would most like a sci fi book!"
        puts "Maybe:"
        scifi = ["Dune by Frank Herbert", "High-Rise by J. G. Ballard", "The Hitchhiker's Guide to the Galaxy by Douglas Adams", "The Invisible Life of Addie LaRue by V. E. Schwab", "Ready Player One by Ernest Cline"]
        puts scifi
    else
        puts "I think you're a romance fan!"
        puts "Maybe:"
        romance = ["The Viscount Who Loved Me by Julia Quinn", "Beach Read by Emily Henry", "The Younger Wife by Sally Hepworth", "Suitors and Sabotage by Cindy Anstey", "Bringing Down The Duke by Evie Dunmore"]
        puts romance 
    end
end
end
