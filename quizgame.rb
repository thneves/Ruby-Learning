
#STEP 1 - CREATE A CLASS THAT I CAN CREATE QUESTIONS, IT HAS TWO ATTRIBUTES, ONE PROMPT, FOR THE QUESTION AND ONE ANSWER

class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)

        @prompt = prompt
        @answer = answer
    end
end

#STEP 2 - VARIABLES STORING THE QUESTIONS I WILL MAKE, INCLUDING THE ANSWERS IN FORM OF A MULTIPLE CHOICE QUESTION

    p1 = "What colors are apples?\n(a)red\n(b)purple\n(c)orange"
    p2 = "What colors are bananas?\n (a)red\n(b)yellow\n(c)orange"
    p3 = "What colors are orange?\n (a)orange\n(b)purple\n(c)green"

#STEP 3 - CREATE AN ARRAY, AND FOR EACH ITEM IN THE ARRAY, I USE THE CLASS ABOVE TO CREATE MY QUESTIONS, ALSO USING THE VARIABLES ABOVE, WHICH ARE THE QUESTIONS AND ANSWERS.

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "b"),
    Question.new(p3, "a")
]

#STEP 4- FINALLY CREATE A METHOD THAT WILL RUN THE QUESTIONS ASKING FOR AN ANSWER TO THE USER

def run_test(questions)

    #two variables, one for the answer, empty string and the score starting at 0
   
    answer = ''   
    score = 0, '0'


    for question in questions
        puts question.prompt  # a for loop'that goes through the array with the questions created above, and for each element(question) in the array, prompts the question to the user
        answer = gets.chomp()   # and after the prompt, waits for an input with the answer from the user
        if answer == question.answer   # then, checks if the answers matches the segund argument inthe question element array, which is the right answer
        score += 1   # if so, got one more point at the score
        end
    end

    puts "You got #{score.to_s} out of #{questions.length.to_s} " # show the result comparing the score with the numquer of questions
end


run_test(questions)
