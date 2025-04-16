class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?('//')
      delimiter_end = numbers.index("\n")
      delimiter = numbers[2..delimiter_end - 1]
      numbers = numbers[delimiter_end + 1..-1]
      numbers = numbers.split(delimiter)
    else
      numbers = numbers.split(/[\n,]/)
    end

    numbers.map(&:to_i).sum
  end
end
