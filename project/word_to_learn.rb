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
