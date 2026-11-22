DROP TABLE IF EXISTS tasks;


CREATE TABLE IF NOT EXISTS tasks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tasks (title, description, completed)
VALUES
    ('Изучить Go', 'Пройти базовый курс', TRUE),
    ('Написать REST API', 'Сделать базовый функционал', FALSE),
    ('Зарелизить приложение', 'Развернуть приложение на сервере', FALSE);