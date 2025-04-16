class StringCalculator
  def self.add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    delimiter = ','
    num_string = numbers

    # Check for custom delimiter
    if numbers.start_with?('//')
      delimiter_end_index = numbers.index("\n")
      delimiter = numbers[2..delimiter_end_index - 1]
      num_string = numbers[delimiter_end_index + 1..-1]
    end

    num_array = num_string.split(delimiter)
    sum = 0
    negative_numbers = []

    num_array.each do |num|
      current_num = num.to_i
      if current_num < 0
        negative_numbers << current_num
      else
        sum += current_num
      end
    end

    if negative_numbers.any?
      raise "Negative numbers not allowed: #{negative_numbers.join(', ')}"
    end

    sum
  end
end
