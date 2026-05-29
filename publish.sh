#!/bin/bash
# publish.sh — публикует lunara-legal на GitHub Pages.
#
# Шаги ДО запуска:
#   1. Создай пустой PUBLIC repo на github.com: https://github.com/new
#      - Repository name: lunara-legal
#      - PUBLIC (Pages нужен public)
#      - НЕ инициализируй README/license — оставь пустым
#   2. Убедись что git настроен:  git config --global user.email "osetrov.artem@gmail.com"
#   3. Запусти этот скрипт:  bash publish.sh
#
# После запуска:
#   4. Открой https://github.com/osetrov/lunara-legal/settings/pages
#   5. Source = Deploy from a branch
#   6. Branch = main, folder = / (root) → Save
#   7. Через ~1 минуту проверь https://osetrov.github.io/lunara-legal/privacy.html

set -e
cd "$(dirname "$0")"

# .gitignore для самого lunara-legal (не нужен для статики)
if [ ! -f .gitignore ]; then
  echo ".DS_Store" > .gitignore
fi

if [ ! -d .git ]; then
  echo "🔧 Инициализирую git repo..."
  git init -b main
  git add .
  git commit -m "Initial: Lunara privacy policy + terms of service"
  echo ""
  echo "🌐 Добавляю remote origin..."
  git remote add origin https://github.com/osetrov/lunara-legal.git
else
  echo "🔁 Repo уже инициализирован — commit изменений..."
  git add .
  git diff --cached --quiet || git commit -m "Update legal pages"
fi

echo ""
echo "📤 Push в main..."
git push -u origin main

echo ""
echo "✅ Pushed."
echo ""
echo "ТЕПЕРЬ открой:"
echo "   https://github.com/osetrov/lunara-legal/settings/pages"
echo "и убедись что:"
echo "   • Source: Deploy from a branch"
echo "   • Branch: main / (root)"
echo ""
echo "Через 1-2 минуты страницы будут доступны:"
echo "   https://osetrov.github.io/lunara-legal/privacy.html"
echo "   https://osetrov.github.io/lunara-legal/terms.html"
