require_relative 'player'
require_relative 'utils'

class Game
  def initialize
    @secret_number = rand(1..100)
    @attempts = 0
    @max_attempts = 7
    @player = Player.new
  end

  def start
    Utils.print_welcome
    puts "Привет, #{@player.get_name}!"
    puts "Я загадал число от 1 до 100. У вас #{@max_attempts} попыток.\n\n"
    
    game_loop
  end

  private

  def game_loop
    while @attempts < @max_attempts
      @attempts += 1
      puts "Попытка #{@attempts}/#{@max_attempts}"
      print "Введите число: "
      
      guess = gets.chomp.to_i
      
      if guess == @secret_number
        win_game
        return
      elsif guess < @secret_number
        puts Utils.colorize("Загаданное число больше!", :yellow)
      else
        puts Utils.colorize("Загаданное число меньше!", :yellow)
      end
      
      puts ""
    end
    
    lose_game
  end

  def win_game
    puts Utils.colorize("🎉 Поздравляю! Вы угадали число #{@secret_number}!", :green)
    puts "Вы справились за #{@attempts} попыток!"
    @player.add_win(@attempts)
    show_stats
  end

  def lose_game
    puts Utils.colorize("😔 Игра окончена! Загаданное число было #{@secret_number}", :red)
    @player.add_loss
    show_stats
  end

  def show_stats
    stats = @player.get_stats
    puts "\n📊 Ваша статистика:"
    puts "Побед: #{stats[:wins]} | Поражений: #{stats[:losses]}"
    puts "Лучший результат: #{stats[:best_score] || 'нет'} попыток" if stats[:best_score]
  end
end
