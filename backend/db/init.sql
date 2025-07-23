-- Таблица задач
CREATE TABLE IF NOT EXISTS task (
    -- id задачи
    id SERIAL PRIMARY KEY,
    -- название задачи (обязательно)
    title TEXT NOT NULL,
    -- описание задачи (опционально)
    description TEXT,
    -- приоритет задачи (обязательно)
    priority TEXT NOT NULL CHECK (priority IN ('low', 'medium', 'high')),
    -- статус задачи (обязательно)
    status TEXT NOT NULL CHECK (status IN ('todo', 'inprogress', 'done')),
    -- категория (обязательно)
    category TEXT NOT NULL CHECK (category IN ('bug', 'feature', 'documentation', 'refactor', 'test')),
    -- временная метка создания задачи (создается автоматически)
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- дедлайн задачи (опционально)
    deadline TIMESTAMP
);