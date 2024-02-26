# Social-website
Наша група з 3х людей працює над додатком "соціальна мережа", ось короткий опис початку роботи над нашим продуктом.
В нашій соціальній мережі можна створити аккаунт, для цього користувачу треба ввести свою e-mail адресу(або нікнейм) та вигадати пароль. По бажаню користувач може додати ще інформації про себе: дата народження, країна проживання та аватар. Також в нас є функція створення допису на своїй сторінці. Інші користувачі можуть переглядати цей допис та залишати там свої реакції або коментар. Також є можливість додавання одне одного в друзі. 
Основні таблиці та їх пункти:
1. User_profile: id, e-mail_address, password, nickname, country, date_of_birth, given_name, surname, photo. 
2. User_post: id, profile_id, written_text, media_location, created_datetime.
3. post_reactions: id, post_id, profile_id, reaction_id, created_time.
4. possible_reactions: id, name.
5. post_comment: id, post_id, profile_id, comment_text, created_datetime.
6. friendship: profile_request, profile_accept.
Нижче Ви можете побачити ER-діаграму, в якій подрібніше видно, над чим ми працюємо:
![ER - diagram МПП](https://github.com/BHunterS/Social-website/assets/118931658/ef66d24f-c71b-464b-9879-74aaca5fe082)

