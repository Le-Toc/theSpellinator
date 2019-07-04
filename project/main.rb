=begin
Program Purpose: Build a program to help my spelling.

Run program
    Select a word from a list of words.  Select the description linked to that word.
    Output the description to the user.
    Wait for the user's input
    Check if the user's input is equal to the selected word
    If it is tell the user and move on to the next question
    If it isn't tell the user and let then try again
    Do this ten times
    End the program
=end

#Branch: Separate Classes

require_relative "word_to_learn"

def main
    startProgram
end

def startProgram
    #Create the Array
    wordsToLearn =
    [
        WordToLearn.new("Additional", "Extra or supplementary to what is already present or available"),
        WordToLearn.new("Damn", "To be condemned by God to suffer eternal punishment in hell"),
        WordToLearn.new("Dame", "The title given to a woman with the rank of Knight Commander or holder of the Grand Cross in the Orders of Chivalry"),
        WordToLearn.new("Receive", "To be given, presented with, or paid (something)"),
        WordToLearn.new("Exhaustion", "A state of extreme physical or mental tiredness"),
        WordToLearn.new("Omelette", "A dish made from beaten eggs fried with butter or oil in a frying pan"),
        WordToLearn.new("Definitive", "(of a conclusion or agreement) done or reached decisively and with authority"),
        WordToLearn.new("Guess", "Estimate or conclude (something) without sufficient information to be sure of being correct"),
        WordToLearn.new("Definitely", "Without doubt (used for emphasis)"),
        WordToLearn.new("Worse", "Something of poorer quality or lower standard"),
        WordToLearn.new("Extension", "A part that is added to something to enlarge or prolong it"),
        WordToLearn.new("Toggle", "A key or command that is operated the same way but with opposite effect on successive occasions"),
        WordToLearn.new("Colleague", "A person with whom one works in a profession or business"),
        WordToLearn.new("Solely", "Not involving anyone or anything else"),
        WordToLearn.new("Efficiency", "The ratio of the useful work performed by a machine or in a process to the total energy expended or heat taken in"),
        WordToLearn.new("Negatively", "To do something in a way that is not desirable or optimistic"),
        WordToLearn.new("Sour", "Having an acid taste like lemon or vinegar"),
        WordToLearn.new("Benefit", "An advantage or profit gained from something"),
        WordToLearn.new("Independent", "Free from outside control; not subject to another's authority"),
        WordToLearn.new("Efficient", "Achieving maximum productivity with minimum wasted effort or expense"),
        WordToLearn.new("Acknowledge", "Accept or admit the existence or truth of something"),
        WordToLearn.new("Acceptance", "The action of consenting to receive or undertake something offered"),
        WordToLearn.new("Discussing", "Talking about (something) with a person or people"),
        WordToLearn.new("Reassess", "Consider something again, in the light of new or different factors"),
        WordToLearn.new("Essentials", "Something that is absolutely necessary"),
        WordToLearn.new("Trousers", "An outer garment covering the body from the waist to the ankles, with a separate part for each leg"),
        WordToLearn.new("Toiletries", "Articles used in washing and taking care of one's body, such as soap, shampoo, and toothpaste"),
        WordToLearn.new("Shower Gel", "A thick liquid product used for washing one's body"),
        WordToLearn.new("Deodorant", "A spray which removes or conceals unpleasant smells, especially bodily odours")
    ]

    for i in 0..(wordsToLearn.size() - 1)
        queryUser(i, wordsToLearn)
    end
end

def queryUser(i, wordsToLearn)
    puts wordsToLearn[i].getDescription

    userInput = gets.chomp

    if userInput == "no" || userInput == "No" || userInput == "Exit" || userInput == "exit" #put in to upper case allow for "NO"
        exit
    elsif userInput == wordsToLearn[i].getWord
        puts "Correct"
    else
        puts "Incorrect"
        queryUser(i, wordsToLearn)
    end

end

main


#Comments
=begin An If Statement
    x = 0
    if x > 2
        puts "x is greater than 2"
    elsif x <= 2 and x != 0
        puts "x is 1"
    else
        puts "I can't guess the number"
    end
=end

=begin Basic method functionality
    def test(a1 = "Ruby", a2 = "Perl")
        puts "The programming language is #{a1}"
        puts "The programming language is #{a2}"
    end
    
    #test "C", "C++"
    #test
=end

=begin Create an object and get values from it
    newWord = WordToLearn.new("Additional", "Extra or supplementary to what is already present or available")
    puts "Hello World"
    var = newWord.getWord
    puts var

    newWord.setWord("Additional2")

    var = newWord.getWord
    puts var
=end

=begin An Array and A For Each Loop
    descriptions =
    [
        WordToLearn.new("Additional", "Extra or supplementary to what is already present or available"),
        WordToLearn.new("Damn", "To be condemned by God to suffer eternal punishment in hell"),
        WordToLearn.new("Dame", "The title given to a woman with the rank of Knight Commander or holder of the Grand Cross in the Orders of Chivalry")
    ]
    
    for i in 0..2
        queryUser(i, descriptions)
    end
=end