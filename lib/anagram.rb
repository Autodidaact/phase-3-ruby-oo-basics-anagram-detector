require "pry"
# Your code goes here!
class Anagram
    attr_accessor :word, :expression
    def initialize(word)
        @word = word
    end

    def match(expression)
        @expression = expression
        @expression.filter do |wrd|
            wrd = wrd.chars
            @word.chars.permutation.to_a.include?(wrd) 
        end
    end 
end

binding.pry