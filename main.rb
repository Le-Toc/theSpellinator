=begin
Build a program to help my spelling.

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

def startProgram
    #Output a word to the user
    puts "Extra or supplementary to what is already present or available"

    userInput = gets.chomp

    if userInput == "no" || userInput == "No" || userInput == "Exit" || userInput == "exit"
        exit
    elsif userInput == "Additional"
        puts "Correct"
    elsif userInput != "Additional"
        puts "Incorrect"
        startProgram
    end
end

=begin
    x = 0
    if x > 2
        puts "x is greater than 2"
    elsif x <= 2 and x != 0
        puts "x is 1"
    else
        puts "I can't guess the number"
    end
=end

startProgram





















def test(a1 = "Ruby", a2 = "Perl")
    puts "The programming language is #{a1}"
    puts "The programming language is #{a2}"
 end
 #test "C", "C++"
 #test