-- Очистка таблицы и сброс счетчика ID
TRUNCATE TABLE task RESTART IDENTITY;

-- Добавление тестовых задач
INSERT INTO task (title, description, priority, status, category, deadline)
VALUES
    ('Исправить баг с авторизацией', 'Ошибка при вводе неверного пароля', 'high', 'inprogress', 'bug', '2025-08-01 18:00:00'),

    ('Добавить фильтр по статусу', 'Нужно реализовать фильтрацию задач на фронте', 'medium', 'todo', 'feature', '2025-08-05 12:00:00'),

    ('Обновить документацию', 'Обновить README и инструкции по запуску', 'low', 'done', 'documentation', NULL),

    ('Рефакторинг модуля работы с БД', 'Разделить логику подключения и выполнения запросов', 'medium', 'inprogress', 'refactor', '2025-08-10 16:30:00'),

    ('Добавить unit-тесты для task_api', NULL, 'high', 'todo', 'test', '2025-08-03 09:00:00');
