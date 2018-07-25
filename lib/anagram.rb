require "pry"

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word.split("").sort
  end

  def match(word_array)
    word_array.select do |single_word|
      single_word.split("").sort == @word
    end
  end
end
