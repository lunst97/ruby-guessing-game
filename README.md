# 🎮 Ruby Guessing Game

[![CI/CD](https://github.com/lunst97/ruby-guessing-game/actions/workflows/main.yml/badge.svg)](https://github.com/lunst97/ruby-guessing-game/actions)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/lunst97/ruby-guessing-game/releases)

Классическая игра "Угадай число" на Ruby с современным CI/CD pipeline.

## 📋 Описание

Компьютер загадывает число от 1 до 100, а игрок пытается его угадать. 
После каждой попытки игрок получает подсказку: больше или меньше загаданное число.

## 🚀 Быстрый старт

### Установка
```bash
# Клонировать репозиторий
git clone https://github.com/lunst97/ruby-guessing-game.git
cd ruby-guessing-game

# Установить зависимости
bundle install
```

### Запуск игры
```bash
ruby main.rb
```

## 🧪 Тестирование
```bash
# Запустить все тесты
bundle exec rspec

# С подробным выводом
bundle exec rspec --format documentation

# Конкретный тест
bundle exec rspec spec/guessing_game_spec.rb
```

## 🏗️ Архитектура проекта
```
ruby-guessing-game/
├── game.rb              # Основная логика игры
├── player.rb            # Класс игрока
├── utils.rb             # Вспомогательные функции
├── main.rb              # Точка входа в приложение
├── spec/                # Директория тестов
│   ├── spec_helper.rb
│   └── guessing_game_spec.rb
├── .github/
│   └── workflows/
│       └── main.yml     # CI/CD pipeline
├── Gemfile              # Зависимости Ruby
├── VERSION              # Файл версии
└── CHANGELOG.md         # История изменений
```

## 📚 Документация API

### Класс Game

Основной класс игры.
```ruby
game = Game.new
game.start  # Начать игру
```

### Класс Player

Управление игроком.
```ruby
player = Player.new(name: "Александр")
```

## 🔧 Разработка

### Установка окружения
```bash
bundle install
```

### Запуск тестов
```bash
bundle exec rspec
```

### Проверка стиля кода
```bash
rubocop
```

## 🤝 Вклад в проект

1. Fork проекта
2. Создайте ветку функциональности (`git checkout -b feature/AmazingFeature`)
3. Commit изменения (`git commit -m 'Add some AmazingFeature'`)
4. Push в ветку (`git push origin feature/AmazingFeature`)
5. Откройте Pull Request

### Соглашение о коммитах

- `feat:` - новая функциональность
- `fix:` - исправление ошибки
- `docs:` - изменения в документации
- `test:` - добавление тестов
- `refactor:` - рефакторинг кода

## 🧪 CI/CD

Проект использует GitHub Actions для автоматизации:

- ✅ Автоматическое тестирование при каждом push
- ✅ Тестирование Pull Requests
- ✅ Проверка на ветках main, development, release
- ✅ Автоматическая генерация документации

## 📊 Статистика проекта

- **Тесты**: 25+ unit тестов
- **Покрытие кода**: ~100%
- **Ruby версия**: 3.2+
- **Зависимости**: RSpec

## 📝 Лицензия

MIT License - см. файл [LICENSE](LICENSE)

## 👤 Автор

**Alexander Zolotov**
- GitHub: [@lunst97](https://github.com/lunst97)

## 🙏 Благодарности

- Ruby Community
- RSpec Team
- GitHub Actions

## 📈 Версии

- **v1.0.0** (2025-10-24) - Первый стабильный релиз

Подробнее см. [CHANGELOG.md](CHANGELOG.md)

---

⭐ Если проект понравился, поставьте звезду!
