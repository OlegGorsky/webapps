document.addEventListener('DOMContentLoaded', function() {
    // Инициализация Telegram WebApp
    const tg = window.Telegram.WebApp;
    tg.expand(); // Раскрываем на всю высоту

    // Получаем данные пользователя
    const user = tg.initDataUnsafe.user;
    if (user) {
        // Устанавливаем аватар пользователя
        const avatarElement = document.getElementById('userAvatar');
        if (user.photo_url) {
            avatarElement.src = user.photo_url;
        } else {
            // Если аватар отсутствует, используем заглушку
            avatarElement.src = 'https://via.placeholder.com/100';
        }

        // Устанавливаем приветствие с именем пользователя
        const greetingElement = document.getElementById('greeting');
        const userName = user.first_name || 'Гость';
        greetingElement.textContent = `Привет, ${userName}! 👋`;
    }

    // Уведомляем Telegram, что приложение готово
    tg.ready();
});
