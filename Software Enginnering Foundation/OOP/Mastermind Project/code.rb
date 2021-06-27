class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.include?(char)} # if using constant outside class, you have to type Code::POSSIBLE_PEGS, but in class you can just refer to it directly.
  end

  def self.random(length)
    # To create an array with separate objects a block can be passed instead. This method is safe to
    # use with mutable objects such as hashes, strings or other arrays:
    # Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
    pegs = Array.new(length) {POSSIBLE_PEGS.keys.sample} # #.keys on a hash returns an array of keys.
                                                          #. sample - Array class method which returns a random 
                                                          # element
    Code.new(pegs)
  end

  def self.from_string(str)
    array = str.split("")
    Code.new(array)
  end



  def initialize(pegs)
    if !Code.valid_pegs?(pegs)
      raise "Pegs not valid"
      #mastermind.ask_user_for_guess
    else
      @pegs = pegs.map(&:upcase)
    end
  end

  def [](index)
    @pegs[index]
  end

  def ==(guess_code)
    self.length == guess_code.length && self.num_exact_matches(guess_code) == self.length
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess_code)
    (0...guess_code.length).count { |i| guess_code[i] == @pegs[i]}
  end

  def num_near_matches(guess_code)
    count = 0
    (0...guess_code.length).each do |x|
      if guess_code[x] != @pegs[x] && @pegs.include?(guess_code[x])
        count += 1
      end
    end
    count
  end

      


end
