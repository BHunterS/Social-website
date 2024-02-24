# Social-website
Наша група з 3х людей працює над додатком "соціальна мережа", ось короткий опис початку роботи над нашим продуктом.
В нашій соціальній мережі можна створити аккаунт, для цього користувачу треба ввести свою e-mail адресу(або нікнейм) та вигадати пароль. Також в нас є функція створення допису та публікації на своїй сторінці. Інші користувачі можуть переглядати цей допис та залишати там свої реакції, такі як: лайк, дизлайк та коментар.  Також є можливість додавання одне одного в друзі. 
Основні таблиці та їх пункти:
1. User_profile: id, e-mail_address, password, country, date_of_birth, given_name, surname. 
2. User_post: id, profile_id, written_text, media_location, created_datetime.
3. post_like: id, post_id, profile_id, created_time.
4. post_comment: id, post_id, profile_id, comment_text, created_datetime.
5. friendship: profile_request, profile_accept.
Нижче Ви можете побачити ER-діаграму, в якій подрібніше видно, над чим ми працюємо:
