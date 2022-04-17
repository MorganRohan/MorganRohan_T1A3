# Recommendation Quiz
# Class: Quiz
# Objects: prompt, score
class Quiz
 attr_accessor :prompt, :score
 def initialize(prompt)
    @prompt = prompt
    @score = score
 end
end

p1 = "Which setting sounds the best?\n (a) On a planet in an alternate reality, maybe there's spaceships zooming by\n (b) Historical, like Regency Era London, with carriages"   
p2 = "If you were a main character, who would you want to be?\n (a) A lone gunslinger type, out for retribution\n (b) A Viscount looking to find a wife"
p3 = "You have to pick only one:\n (a) A Journey \n (b) Romance"
p4 = "Which of these is your favourite colour?\n (a) Black\n (b) Pink"
p5 = "Do you prefer:\n (a) An epic story lasting multiple books\n (b) A story that has a happy ending and is all wrapped up in one book"

questions = [
    Quiz.new(p1),
    Quiz.new(p2),
    Quiz.new(p3),
    Quiz.new(p4),
    Quiz.new(p5)
]

def run_quiz(questions)
    answer = []
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp.to_s
        if answer == "a"
            score += 1
        end
        if answer == "b"
            score += 0
        end
    end
    puts ("You got " + score.to_s)
    if score == 3
        puts "You would most like a sci fi book!"
        puts "Maybe: Dune by Frank Herbert, high-Rise by J. G. Ballard, The Hitchhiker's Guide to the Galaxy by Douglas Adams, The Invisible Life of Addie LaRue by V. E. Schwab or Ready Player One by Ernest Cline"
    else
        puts "I think you're a romance fan!"
        puts "Maybe: The Viscount Who Loved Me by Julia Quinn, Beach Read by Emily Henry, The Younger Wife by Sally Hepworth, Suitors and Sabotage by Cindy Anstey or Bringing Down The Duke by Evie Dunmore" 
    end
end

run_quiz(questions)
