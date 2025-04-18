require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(StringCalculator.add('5')).to eq(5)
    end

    it 'returns the sum of two numbers' do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it 'returns the sum of multiple numbers' do
      expect(StringCalculator.add('1,2,3')).to eq(6)
    end

    it 'handles new lines as delimiters' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'handles custom delimiter' do
      expect(StringCalculator.add("//;\n1;2;3")).to eq(6)
    end

    it 'throws an error when negative numbers are passed' do
      expect { StringCalculator.add('-1,2,-3') }.to raise_error('Negative numbers not allowed: -1, -3')
    end
  end
end
