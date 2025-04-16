class StringCalculator
  def self.add(numbers)
    return numbers.to_i if numbers =~ /^\d+$/
    0
  end
end





