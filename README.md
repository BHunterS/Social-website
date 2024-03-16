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

# Інструкції щодо встановлення та запуску проекту:

