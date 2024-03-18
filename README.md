# Social-website
"Короткий опис проекту":
Наша група з 3х людей працює над додатком "соціальна мережа", ось короткий опис початку роботи над нашим продуктом.
В нашій соціальній мережі можна створити аккаунт, для цього користувачу треба ввести свою e-mail адресу(або нікнейм) та вигадати пароль. По бажаню користувач може додати ще інформації про себе: дата народження, країна проживання та аватар. Також в нас є функція створення допису на своїй сторінці. Інші користувачі можуть переглядати цей допис та залишати там свої реакції або коментар. Також є можливість додавання одне одного в друзі. 
Основні таблиці та їх пункти:
1. User_profile: id, e-mail_address, password, nickname, country, date_of_birth, given_name, surname, photo. 
2. User_post: id, profile_id, written_text, media_location, created_datetime.
3. post_reactions: id, post_id, profile_id, reaction_id, created_time.
4. possible_reactions: id, name.
5. post_comment: id, post_id, profile_id, comment_text, created_datetime.
6. friendship: profile_request, profile_accept.

# Діаграми:
![ER - diagram МПП](https://github.com/BHunterS/Social-website/assets/118931658/ef66d24f-c71b-464b-9879-74aaca5fe082)

# API документація (Роути):
| Маршрут	        | Метод |	Опис |
|---------|-------------|-------------|
| /post_comments	         | GET    |	Відображення списку коментарів до постів користувачів. |
| /post_comments	         | POST   |	Створення нового коментаря до посту користувача. |
| /post_comments/:id       | GET	  | Перегляд конкретного коментаря до поста. |
| /post_comments/:id/edit  |	GET	  | Відображення форми редагування коментарів. |
| /post_comments/:id	     | PATCH  | Оновлення інформації про коментарі. |
| /post_comments/:id	     | PUT	  | Альтернативний метод поновлення коментаря. |
| /post_comments/:id	     | DELETE |	Видалення коментарів. |
| /user_posts              |	GET	   |            Відображає список постів користувачів. |
| /user_posts	             | POST    | Створення нового поста користувача. |
| /user_posts/:id          |	GET    |	Перегляд конкретного поста користувача. |
| /user_posts/:id/edit     | GET     |	Відображення форми редагування посту. |
| /user_posts/:id          |	PATCH  |	Оновлення інформації про пост. |
| /user_posts/:id	         | PUT     |	Альтернативний метод оновлення посту. |
| /user_posts/:id	         | DELETE  |	Видалення поста користувача. |
| /post_reactions          |	GET    |	Відображення списку реакцій до постів користувачів. |
| /post_reactions          |	POST   |	Створення нової реакції на пост користувача. |
| /post_reactions/:id      |	GET    |	Перегляд конкретної реакції на пост. |
| /post_reactions/:id/edit |	GET    |	Відображення форми редагування реакції. |
| /post_reactions/:id      |	PATCH  |	Оновлення інформації щодо реакції. |
| /post_reactions/:id      |	PUT    |	Альтернативний метод поновлення реакції. |
| /post_reactions/:id	     | DELETE  |	Видалення реакції. |
| /reactions	            | GET       |	Відображає список можливих реакцій. |
| /reactions	            |  POST |	Створення нової реакції. |
| /reactions/:id	        | GET	| Перегляд конкретної реакції. |
| /reactions/:id/edit      |	GET |	Відображення форми редагування реакції. |
| /reactions/:id           |	PATCH |	Оновлення інформації щодо реакції. |
| /reactions/:id           |	PUT |	Альтернативний метод поновлення реакції. |
| /reactions/:id           |	DELETE |	Видалення реакції. |
| /users	                 | GET |	Відображення списку користувачів. |
| /users	                 | POST |	Створення нового користувача. |
| /users/:id               |	GET |	Перегляд конкретного користувача. |
| /users/:id/edit          |	GET |	Відображення форми редагування користувача. |
| /users/:id               |	PATCH |	 Оновлення інформації про користувача. |
| /users/:id               |	PUT |	Альтернативний спосіб оновлення користувача. |
| /users/:id               |	DELETE |	Видалення користувача. |
| /friendships              |	GET |	Відображення списку дружб користувачів. |
| /friendships             |	POST |	Створення нової дружби між користувачами |
| /friendships/:id         |	GET |	Перегляд конкретної дружби. |
| /friendships/:id/edit    |	GET |	Відображення форми редагування дружби. |
| /friendships/:id         |	PATCH |	Оновлення інформації про дружбу. |
| /friendships/:id         |	PUT |	Альтернативний спосіб оновлення дружби. |
| /friendships/:id         |	DELETE	| Вилучення дружби. |
| /up	                      | GET |	Повертає статус здоров'я програми. |

# Скріпти:
1. **bundle** (або bundle.cmd на Windows)
- Скрипт для встановлення та керування гемами проекту за допомогою Bundler.

2. **rails**
- Основний скрипт для запуску та керування Rails-додатком.

3. **rake**
- Скрипт для виконання завдань Rake - інструмент для визначення та виконання завдань в Ruby.

4. **importmap**
- Скрипт, що пов'язаний з webpacker для управління залежностями веб-прикладів.

5. **docker-entrypoint**
- Скрипт, який використовується для налаштування середовища контейнера Docker під час його запуску.

6. **setup**
- Скрипт для налаштування проекту або виконання певних дій перед запуском.

# Інструкції щодо встановлення та запуску проекту:
  **Установка та налаштування:**
1. *Клонування репозиторію:*
- Відкрийте термінал (або командний рядок) на вашому комп'ютері та введіть наступну команду:
``` 
git clone <URL репозиторію> 
```
2. *Перехід в директорію проекту:*
- Введіть команду:
  ```
  cd Social-website 
  ```
3. *Встановлення залежностей:*
- Проект використовує залежності, виконайте команду для їх встановлення. Зазвичай це може бути виконано за допомогою Bundler для Ruby-проектів.
```
 bundle install 
```
5. *Налаштування бази даних PostgreSQL:*
- Наш проект використовує базу даних PostgreSQL, переконайтеся, що ви налаштували файл конфігурації для з'єднання з базою даних. Зазвичай це файл *config/database.yml* для Ruby on Rails.

	**Запуск**
1. *Запуск сервера:* 
- Після налаштування можна запустити локальний сервер для проекту. Для Ruby on Rails це може бути виконано за допомогою команди:
```
rails server
``` 
2. *Перегляд веб-сторінки:* 
- Після запуску сервера відкрийте веб-браузер та перейдіть за адресою *“http://localhost:3000”* (або іншій, якщо порт було змінено). Ви повинні бачити головну сторінку нашого проекту.

	**Важливі зауваження:**
*	Перед запуском проекту переконайтеся, що ваш комп'ютер має всі необхідні залежності та середовище виконання, необхідне для проекту.
*	Якщо у вас виникнуть проблеми під час установки або запуску, перевірте README файл у репозиторії проекту, там можуть бути додаткові інструкції.

