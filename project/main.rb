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

#Branch: Implement Random Functionality
#Current Task: Bring wordsToTest array into main functionality

require_relative "word_to_learn"

def main
    startProgram
end

def startProgram
    #Create the Array of words to learn
    wordsToLearn = createTheArray

    #Create an array of words to test
    wordsToTest = selectWordsToTest(wordsToLearn)

    #Query user on selected words
    runQuestions(wordsToLearn, wordsToTest)
end

def createTheArray
    #Create and populate the array
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

    return wordsToLearn
end

def selectWordsToTest(wordsToLearn)
    #Create the array of words to test
    wordsToTest = Array.new

    #Assign 10 Numbers To wordsToTest Array
    for i in 0..9
        wordsToTest = assignNumbersToArray(wordsToTest, wordsToLearn)
    end

    return wordsToTest
end
    
def assignNumbersToArray(wordsToTest, wordsToLearn)
    #Call the method to filter the numbers and add one
    wordsToTest = addANewNumber(wordsToTest, wordsToLearn)
    return wordsToTest
end

def addANewNumber(wordsToTest, wordsToLearn)
    #Pick a random number based on size of the wordsToLearn array
    numberToBeAdded = rand(0..(wordsToLearn.size() - 1))

    #Declare a variable to test for duplicates
    numberIsNew = true

    #If the array is empty add the number in without filter
    if wordsToTest.size() == 0
        wordsToTest.push numberToBeAdded
    else
        #If the array isn't empty test that the new number isn't already in the array and if it isn't add it
        wordsToTest = testIfNumberIsNewAndAdd(wordsToTest, numberToBeAdded, numberIsNew, wordsToLearn)
    end

    return wordsToTest
end

def testIfNumberIsNewAndAdd(wordsToTest, numberToBeAdded, numberIsNew, wordsToLearn)
    #Test if the number is in the array
    numberIsNew = testIfNumberIsNew(wordsToTest, numberToBeAdded, numberIsNew)

    #If the number is new add it to the array
    if numberIsNew
        wordsToTest.push numberToBeAdded
    else
        #Call the addNewNumber method again until a new number can be added
        addANewNumber(wordsToTest, wordsToLearn)
    end

    return wordsToTest
end

def testIfNumberIsNew(wordsToTest, numberToBeAdded, numberIsNew)
    wordsToTest.each do |i|
        if i == numberToBeAdded
            numberIsNew = false
        end
    end

    return numberIsNew
end

def runQuestions(wordsToLearn, wordsToTest)
    #Call method based on the words to learn
    wordsToTest.each do |wordNumber|
        queryUser(wordNumber, wordsToLearn)
    end
end

def queryUser(wordNumber, wordsToLearn)
    #Output the description of the word
    puts wordsToLearn[wordNumber].getDescription

    #Get the user's response
    userInput = gets.chomp

    #Check if the user wants to exit the program
    if userInput == "no" || userInput == "No" || userInput == "Exit" || userInput == "exit" #put in to upper case allow for "NO"
        exit
    elsif userInput == wordsToLearn[wordNumber].getWord
        #Check if the user was correct
        puts "Correct"
    else
        #If not output the same question to them
        puts "Incorrect"
        queryUser(wordNumber, wordsToLearn)
    end
end

#Program starts here.  All methods have to be declared before they can be called
main


=begin Comments
    An If Statement
        x = 0
        if x > 2
            puts "x is greater than 2"
        elsif x <= 2 and x != 0
            puts "x is 1"
        else
            puts "I can't guess the number"
        end
    
    Basic method functionality
        def test(a1 = "Ruby", a2 = "Perl")
            puts "The programming language is #{a1}"
            puts "The programming language is #{a2}"
        end
    
        #test "C", "C++"
        #test

    Create an object and get values from it
        newWord = WordToLearn.new("Additional", "Extra or supplementary to what is already present or available")
        puts "Hello World"
        var = newWord.getWord
        puts var

        newWord.setWord("Additional2")

        var = newWord.getWord
        puts var

    An Array and A For Each Loop
        descriptions =
        [
            WordToLearn.new("Additional", "Extra or supplementary to what is already present or available"),
            WordToLearn.new("Damn", "To be condemned by God to suffer eternal punishment in hell"),
            WordToLearn.new("Dame", "The title given to a woman with the rank of Knight Commander or holder of the Grand Cross in the Orders of Chivalry")
        ]
        
        for i in 0..2
            queryUser(i, descriptions)
        end

    For Loop Where The Loop Variable, i, is used with print method (and new line is used)
        for i in 0..(wordsToLearn.size() - 1)
            print i , " : " + wordsToLearn[i].getWord + "\n"
        end
        
    For Each Loop
        ary = [1,2,3,4,5]       #Declare the array
        ary.each do |i|         #For each element in the array assign that element to i
            puts i              #Output the element assigned to i
        end                     #Add in end statment to close.  This won't interfear with other end statements
=end