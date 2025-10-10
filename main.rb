require_relative 'game'
require_relative 'utils'



def main
  loop do
    game = Game.new
    game.start
    
    puts "\n"
    break unless Utils.ask_yes_no("Хотите сыграть еще раз?")
    
    Utils.clear_screen
  end
  
  puts Utils.colorize("\nСпасибо за игру! До свидания! 👋", :green)
end

# Проверяем, что файл запущен напрямую, а не подключен через require
if __FILE__ == $PROGRAM_NAME
  main
end
