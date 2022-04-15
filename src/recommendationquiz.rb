# Recommendation Quiz class
# Class: Recommendations
# Objects: 
class Question
 attr_accessor :prompt
 def initialize(prompt)
    @prompt = prompt
 end
end

p1 = "Which setting sounds the best?\n (a) On a planet in an alternate reality, maybe there's spaceships zooming by\n (b) In a big, bustling city like New York\n (c) A far away land, with castles and pirate ships\n (d) Don't mind where, I just want it to be a bit dodgy and sinister feeling\n (e) Historical, like Regency Era London, with carriages"   
p2 = "If you were a main character, who would you want to be?\n (a) A lone gunslinger type, out for retribution\n (b) An everyday person, going through lifes ups and downs\n (c) An orphan with unusual skills and abilities\n (d) A detective with a troubled past\n (e) A Viscount looking to find a wife"
p3 = "You have to pick only one:\n (a) A Journey \n (b) Drama\n (c) Magic \n (d) Mystery \n (e) Romance"
p4 = "Which of these is your favourite colour?\n (a) Purple\n (b) Yellow\n (c) Green\n (d) Red\n (e) Pink"

questions = [
    Question.new(p1),
    Question.new(p2),
    Question.new(p3),
    Question.new(p4)
]

def run_quiz(questions)
    answer = []
    score = 0 
    for question in questions
        puts question.prompt
        answer = gets.chomp.to_s




        
#         if answer == "a"
#             score += 1
#         end
#         if answer == "b"
#             score += 3
#         end
#         if answer == "c"
#             score += 5
#         end
#         if answer == "d"
#             score += 7
#         end
#         if answer == "e"
#             score += 9
#         end
#     end
#     puts ("You got " + score.to_s)
# end

# def recommendation_quiz(score)
#     if score <= 8
#         puts "You would most like a sci fi book!"
#         puts "Maybe: Dune by Frank Herbert, high-Rise by J. G. Ballard, The Hitchhiker's Guide to the Galaxy by Douglas Adams, The Invisible Life of Addie LaRue by V. E. Schwab or Ready Player One by Ernest Cline"
#     end
#     if score > 8 && <= 16
#         puts "You would most like a modern fiction book!"
#         puts "Perhaps: Wild Abandon by Emily Bitto, Conversations with Friends by Sally Rooney, Nine Perfect Strangers by Liane Moriarty, Daisy Jones & The Six by Taylor Jenkins Reid or Little Fires Everywhere by Celeste Ng "
#     end
#     if score > 16 && <=24
#         puts "I think you would like a fantasy read!"
#         puts "Maybe: The Long Earth by Terry Pratchett & Stephen Baxter, Circe by Madeline Miller, The Name of The Wind by Patrick Rothfuss, Graceling by Kristin Cashore or Throne of Glass by Sarah J. Maas"
#     end 
#     if score > 24 && <=32
#         puts "You might be a crime thriller fan!"
#         puts "Perhaps: Before You Knew My Name by Jacqueline Bublitz, The Last Thing He Told Me by Laura Dave, Pieces of Her by Karin Slaughter, The Nowhere Child by Christian White, Naked in Death by J. D. Robb or  The Chalk Man by C. J. Tudor"
#     end
#     if score > 32
#         puts "I think you're a romance fan!"
#         puts "Maybe: The Viscount Who Loved Me by Julia Quinn, Beach Read by Emily Henry, The Younger Wife by Sally Hepworth, Suitors and Sabotage by Cindy Anstey or Bringing Down The Duke by Evie Dunmore" 
#     end
# end
run_quiz(questions)
recommendation_quiz(score)
