require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe '.add' do
    it 'returns 0 for an empty string' do
      result = StringCalculator.add('')
      expect(result).to eq(0)
    end
  end
end
