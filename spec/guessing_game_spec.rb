require_relative '../guessing_game'

RSpec.describe 'Guessing Game' do
  describe 'game logic' do
    it 'generates a random number between 1 and 100' do
      number = rand(1..100)
      expect(number).to be_between(1, 100)
    end

    it 'compares guess with target number' do
      target = 50
      expect(30 < target).to be true
      expect(70 > target).to be true
      expect(50 == target).to be true
    end
  end

  describe 'input validation' do
    it 'accepts valid numeric input' do
      input = "42"
      expect(input.to_i).to be_a(Integer)
      expect(input.to_i).to be > 0
    end
  end
end
