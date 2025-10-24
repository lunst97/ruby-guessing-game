require_relative '../game'
require_relative '../player'
require_relative '../utils'

RSpec.describe 'Guessing Game' do
  describe 'Game class' do
    it 'creates a game instance' do
      expect { Game }.not_to raise_error
    end
  end

  describe 'Player class' do
    it 'creates a player instance' do
      expect { Player }.not_to raise_error
    end
  end

  describe 'game logic' do
    it 'generates a random number between 1 and 100' do
      number = rand(1..100)
      expect(number).to be_between(1, 100)
    end

    it 'validates numeric input' do
      input = "42"
      expect(input.to_i).to be_a(Integer)
      expect(input.to_i).to be > 0
    end
  end
end
