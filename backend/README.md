# Backend C++ for Task Manager

---

## Описание

Серверная часть для сервиса управления задачами.

## Возможности

- Добавлять/редактировать/удалять задачи
- Выставлять приоритет задач
- Выставлять статус задач

## Технологии (в разработке)

- Язык: **C++17**
- Веб-фреймворк: **httplib.h**
- База данных: **PostgreSQL**
- Сборка: **CMake**
- Работа с БД: **libpq-fe.h**

## Структура проекта

```
backend/
├── CMakeLists.txt            # Сборочный скрипт для CMake
├── README.md                 # Документация
│
├── config/
│   ├── .env                  # Зависимости
│   └── db_config.json        # Подключение к PostgreSQL
│
├── src/
│   ├── main.cpp              # Точка входа
│   ├── server.cpp            # Описание и подключение к серверу
│   ├── routes/               # REST API
│   │   └── task_api.cpp      # Управление задачами
│   └── db/
│       ├── db.cpp            # Подключение к PostgreSQL
│       └── task.cpp          # обработка запросов по задачам
│
├── include/
│   ├── server.h
│   ├── routes/
│   │   └── task_api.h
│   └── db/
│       ├── db.h
│       └── task.h
│
├── db/
│   └── init.sql              # Создание таблиц
│
└── tests/                    # Тесты
    └── db/
       ├── get_data.sql
       └── add_data.sql      
```

## Структура БД

### task_manager - название БД

> `task` — таблица задач

### Поля таблицы:

- `id`: уникальный идентификатор задачи (генерируется автоматически)
- `title`: название задачи (обязательно)
- `description`: описание задачи (опционально)
- `priority`: приоритет задачи (обязательно) - **low**, **medium**, **high**
- `status`: статус задачи (обязательно) - **todo**, **inprogress**, **done**
- `category`: категория задачи (обязательно) - **bug**, **feature**, **documentation**, **refactor**, **test**
- `created`: дата и время создания задачи (генерируется автоматически)
- `deadline`: дата дедлайна задачи (опционально)

## Запуск

> База данных `task_manager` должна быть создана

> Для создания таблицы `task` в БД используется скрипт `init.sql`, который лежит в папке `backend/db`

Заходим в папку проекта и создаем папку сборки `build`:
```bash
cd backend
mkdir build && cd build
```

Собрать проект с помощью CMake:
```bash
cmake ..
make
```
Запустить проект:
```bash
./task_manager
```

### Developer
<depos_dev@mail.ru>  
*Dmitri Posvyashenyi*
