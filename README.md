# Корзина в интернет-магазин
Если вы знакомы с Ruby on rails, для вас будет всё просто.
Если нет, не волнуйтесь. Следуйте инструкции, и у вас тоже получится запустить приложение.

Есть вопросы? Пишите:
<https://t.me/Ivan_Ruby_Developer>

## Требования

- Ruby 3.0.2
- Rails 7.0.8

## Установка
### Интрукция для Linux

0. Откройте консоль
1. Клонируйте репозиторий: `git clone https://github.com/IvanGaevskiy/shopping-cart-for-an-online-store`
2. Перейдите в папку репозитория
3. Установите зависимости `bin/setup` 
4. Запустите сервер `bin/dev`

>Если при установке что-то идёт не так, проверьте соответствие версии Ruby.

>Если вам нужно снова добавить товары в корзину, введите команду
`rails db:seed` и перезагрузите страницу

## Использование

Перейдите на основную страницу с корзиной.
<http://localhost:3000/cart>

### Основные файлы проекта

Контроллер:
- *app/controllers/carts_controller.rb*

Доп. метод для склонения слов:
- *app/helpers/sklonyator_helper.rb*

Модели:
- *app/models/cart_item.rb*
- *app/models/cart.rb*
- *app/models/product.rb*

Представления:
- *app/views/carts/show.html.erb*
- *app/views/layouts/application.html.erb*

Настройка url-путей:
- *app/config/routes.rb*