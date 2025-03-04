class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.split.map do |word|
      # Check if the word ends with punctuation
      if word.length > 4
        punctuation = word.match(/[[:punct:]]$/) ? word[-1] : nil
        base_word = punctuation ? word[0...-1] : word
  
        # Replace the word with "Marklar" or "marklar"
        replacement = base_word[0] =~ /[A-Z]/ ? "Marklar" : "marklar"
        
        # Reattach punctuation if present
        punctuation ? replacement + punctuation : replacement
      else
        word
      end
    end.join(" ")
  end
  

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a, b = 0, 1
    sum = 0
  
    nth.times do
      sum += b if b.even?  # Add even Fibonacci numbers to sum
      a, b = b, a + b      # Update Fibonacci numbers
    end
  
    sum
  end
  

end
