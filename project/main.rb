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
        WordToLearn.new("Dame", "The title given to a woman with the rank of Knight Commander or holder of the Grand Cross in the Orders of Chivalry")
    ]

    for i in 0..2
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