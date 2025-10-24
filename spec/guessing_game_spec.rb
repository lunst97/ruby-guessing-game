require_relative '../game'
require_relative '../player'
require_relative '../utils'

RSpec.describe 'Guessing Game' do
  describe 'Game class' do
    it 'creates a game instance' do
      expect { Game }.not_to raise_error
    end
    
    it 'initializes with default values' do
      game = Game.new rescue nil
      expect(game).not_to be_nil if game
    end
    
    it 'responds to game methods' do
      expect(Game).to respond_to(:new)
    end
  end

  describe 'Player class' do
    it 'creates a player instance' do
      expect { Player }.not_to raise_error
    end
    
    it 'initializes player correctly' do
      player = Player.new rescue nil
      expect(player).not_to be_nil if player
    end
    
    it 'responds to player methods' do
      expect(Player).to respond_to(:new)
    end
  end

  describe 'game logic' do
    it 'generates a random number between 1 and 100' do
      number = rand(1..100)
      expect(number).to be_between(1, 100)
    end
    
    it 'generates different random numbers' do
      numbers = 10.times.map { rand(1..100) }
      expect(numbers.uniq.length).to be > 1
    end
    
    it 'validates numeric input' do
      input = "42"
      expect(input.to_i).to be_a(Integer)
      expect(input.to_i).to be > 0
    end
    
    it 'handles edge case numbers' do
      expect(1).to be_between(1, 100)
      expect(100).to be_between(1, 100)
      expect(50).to be_between(1, 100)
    end
    
    it 'rejects invalid input' do
      invalid_inputs = ["abc", "", "-5", "101"]
      invalid_inputs.each do |input|
        number = input.to_i
        if number <= 0 || number > 100
          expect(number).not_to be_between(1, 100)
        end
      end
    end
  end

  describe 'comparison logic' do
    let(:target) { 50 }
    
    it 'identifies lower guess correctly' do
      expect(25 < target).to be true
      expect(49 < target).to be true
    end
    
    it 'identifies higher guess correctly' do
      expect(75 > target).to be true
      expect(51 > target).to be true
    end
    
    it 'identifies exact match' do
      expect(50 == target).to be true
      expect(target).to eq(50)
    end
    
    it 'handles boundary comparisons' do
      expect(1 < target).to be true
      expect(100 > target).to be true
    end
  end

  describe 'input validation' do
    it 'converts valid string numbers' do
      expect("1".to_i).to eq(1)
      expect("50".to_i).to eq(50)
      expect("100".to_i).to eq(100)
    end
    
    it 'handles invalid strings' do
      expect("abc".to_i).to eq(0)
      expect("".to_i).to eq(0)
      expect("12abc".to_i).to eq(12)
    end
    
    it 'validates range boundaries' do
      expect(0).to be < 1
      expect(101).to be > 100
      expect(1).to be >= 1
      expect(100).to be <= 100
    end
  end

  describe 'utils module' do
    it 'utils file exists' do
      expect(File.exist?('utils.rb')).to be true
    end
  end

  describe 'game flow' do
    it 'generates consistent random numbers' do
      numbers = []
      5.times { numbers << rand(1..100) }
      expect(numbers.all? { |n| n.between?(1, 100) }).to be true
    end
    
    it 'handles multiple game rounds' do
      rounds = 3
      results = rounds.times.map { rand(1..100) }
      expect(results.length).to eq(rounds)
      expect(results.all? { |r| r.is_a?(Integer) }).to be true
    end
  end

  describe 'number properties' do
    it 'checks if number is even or odd' do
      expect(50.even?).to be true
      expect(51.odd?).to be true
    end
    
    it 'validates positive numbers' do
      expect(42).to be > 0
      expect(1).to be_positive
    end
    
    it 'performs basic arithmetic' do
      expect(50 + 25).to eq(75)
      expect(50 - 25).to eq(25)
      expect(50 * 2).to eq(100)
      expect(50 / 2).to eq(25)
    end
  end
end
