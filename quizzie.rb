# It creates a class called Question @ blueprint 

# Creating a class called Question - blueprint for creating objects.
class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

# Creating three strings that are the questions.
p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
p2 = "What color are bananas?\n(a)pink\n(b)red\n(c)yellow"
p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

# Creating an array of Question objects and passing in the questions and answers.
questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c"),
    Question.new(p3, "b")
]

##
# The function takes an array of questions, asks each question, and then prints out the number of
# questions the user got right
# 
# Args:
#   questions: an array of Question objects
def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts ("You got " + score.to_s + "/" + questions.length().to_s)
end

# Calling the function run_test and passing in the array of questions.
run_test(questions)

