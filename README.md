# LoginScreen
Приложение с двумя экранами.

Первый экран LoginViewController отвечает за авторизацию пользователя. На втором экране WelcomeViewController отображается его имя и кнопка логаута.

Имя пользователя на второй экран передается при переходе с экрана авторизации. Для этого реализуйется метод prepare.

При возврате на первый экран данные в текстовых полях очищаются. Для этого воспользовался unwind сегвеем.

 При вводе имени пользователя отключена автокоррекция и предиктивный ввод. При вводе пароля, вводимые символы скрываются.
