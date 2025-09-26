module Utils
  # ANSI коды для цветного текста
  COLORS = {
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    white: 37
  }.freeze

  def self.colorize(text, color)
    color_code = COLORS[color]
    return text unless color_code
    
    "\e[#{color_code}m#{text}\e[0m"
  end

  def self.print_welcome
    welcome_text = <<~WELCOME
      #{colorize('╔════════════════════════════════════╗', :cyan)}
      #{colorize('║           УГАДАЙ ЧИСЛО             ║', :cyan)}
      #{colorize('║        Консольная игра на Ruby     ║', :cyan)}
      #{colorize('╚════════════════════════════════════╝', :cyan)}
    WELCOME
    
    puts welcome_text
  end

  def self.clear_screen
    system('clear') || system('cls')
  end

  def self.ask_yes_no(question)
    loop do
      print "#{question} (y/n): "
      answer = gets.chomp.downcase
      
      return true if ['y', 'yes', 'д', 'да'].include?(answer)
      return false if ['n', 'no', 'н', 'нет'].include?(answer)
      
      puts "Пожалуйста, введите 'y' или 'n'"
    end
  end

  def self.pause
    print "Нажмите Enter для продолжения..."
    gets
  end
end
