class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    #index = (0...DICTIONARY.length)
    #DICTIONARY[index]
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    arr = []
    @secret_word.each_char.with_index do |x,i|
      if char == x
        arr << i
      end
    end
    arr
  end

  def fill_indices(char,arr)
    arr.each do |x|
      @guess_word[x] = char
    end
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already been attempted"
      return false
    else
      @attempted_chars << char
      if !@secret_word.include?(char)
        @remaining_incorrect_guesses -= 1
      end
      arr = self.get_matching_indices(char)
      self.fill_indices(char, arr)
      return true 
    end
    
  end

  def ask_user_for_guess
    print "Enter a char:"
    input = gets.chomp
    self.try_guess(input)
  end

  def win?
    if @guess_word.join("") == @secret_word
      puts "Win"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    if self.lose? == true || self.win? == true
      puts @secret_word
      return true
    else
      return false
    end
  end
end
