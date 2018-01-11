class BobsPalindrome < ActiveRecord::Base

  #make everything lowercase
  #remove spaces
  #remove all punctuation
  def self.input_check(input)
    if input.length > 0 && input.downcase.scan(/([?.,'":;!` ]|[a-z])/).length == input.length
      #format to make all lowercase
      input.downcase!
      #split each input character to array element
      character_array = input.split('')
      #sanitize array to only contain letters a-z
      character_array.delete_if {|l| l if !l.match(/[a-z]/)}
      
      input == input.reverse ? "We have a 'drome!!" : "No way. Not at all......"
    else
      "Let's take this seriously..."
    end
  end

end

# first = nil
      # second = nil
      # if character_array.length % 2 == 0
      #   first = character_array[ 0..( ( character_array.length / 2 ) - 1 ) ]
      #   second = character_array[ ( character_array.length / 2 ) .. -1 ].reverse!
      # else
      #   first = character_array[0..(character_array.length/2 - 1)]
      #   second = character_array[(character_array.length/2 + 1)..-1].reverse!