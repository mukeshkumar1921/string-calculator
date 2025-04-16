require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe '.add' do
    it 'returns 0 for an empty string' do
      result = StringCalculator.add('')
      expect(result).to eq(0)
    end
	
	it 'returns the number itself for a single number' do
      result = StringCalculator.add('5')
      expect(result).to eq(5)
    end
	
	it 'returns the sum of two numbers' do
      result = StringCalculator.add('1,2')
      expect(result).to eq(3)
    end

    it 'handles new lines as delimiters' do
      result = StringCalculator.add("1\n2,3")
      expect(result).to eq(6)
    end
	
	it 'handles custom delimiter' do
      result = StringCalculator.add("//;\n1;2;3")
      expect(result).to eq(6)
    end


  end
end
