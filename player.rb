class Player
  def initialize
    @name = nil
    @wins = 0
    @losses = 0
    @best_score = nil
  end

  def get_name
    return @name if @name
    
    print "Как вас зовут? "
    @name = gets.chomp
    
    if @name.empty?
      @name = "Анонимный игрок"
    end
    
    @name
  end

  def add_win(attempts)
    @wins += 1
    
    if @best_score.nil? || attempts < @best_score
      @best_score = attempts
      puts "🏆 Новый личный рекорд!"
    end
  end

  def add_loss
    @losses += 1
  end

  def get_stats
    {
      name: @name,
      wins: @wins,
      losses: @losses,
      best_score: @best_score,
      total_games: @wins + @losses
    }
  end

  def reset_stats
    @wins = 0
    @losses = 0
    @best_score = nil
    puts "Статистика сброшена!"
  end
end
