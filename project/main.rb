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

#Branch: Implement Object Orientated Design

class WordToLearn
    @noOfFails
    @word
    @description

    def initialize(wordInput, descriptionInput)
        @word = wordInput
        @description = descriptionInput
        @noOfFails  = 0
    end

    def getWord
        return @word
    end

    def setWord(newWord)
        @word = newWord
    end

    def getDescription
        return @description
    end

    def setDescription(newDescription)
        @description = newDescription
    end

    def getNoOfFails
        return @description
    end

    def setNoOfFails(newNoOfFails)
        @noOfFails = newNoOfFails
    end
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
        puts wordsToLearn[i].getWord
    end

=begin
    for i in 0..2
        queryUser(i, wordsToLearn)
    end
=end
end

def queryUser(i, descriptions)
    puts descriptions[i.outputDescription]
    userInput = gets.chomp

    if userInput == "no" || userInput == "No" || userInput == "Exit" || userInput == "exit" #put in to upper case allow for "NO"
        exit
    elsif userInput == descriptions[i.word]
        puts "Correct"
    else
        puts "Incorrect"
        queryUser(i, descriptions)
    end
end

startProgram


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