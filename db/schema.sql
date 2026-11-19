-- PostgreSQL жишиг өгөгдлийн сангийн зураглал (conceptual starter)
CREATE TABLE users (id BIGSERIAL PRIMARY KEY, full_name TEXT NOT NULL, role TEXT NOT NULL);
CREATE TABLE lockers (id BIGSERIAL PRIMARY KEY, code TEXT UNIQUE NOT NULL, status TEXT NOT NULL);
CREATE TABLE orders (id BIGSERIAL PRIMARY KEY, sender_id BIGINT REFERENCES users(id), receiver_name TEXT NOT NULL, status TEXT NOT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
CREATE TABLE deliveries (id BIGSERIAL PRIMARY KEY, order_id BIGINT UNIQUE REFERENCES orders(id), courier_id BIGINT REFERENCES users(id), locker_id BIGINT REFERENCES lockers(id), status TEXT NOT NULL);
CREATE TABLE payments (id BIGSERIAL PRIMARY KEY, order_id BIGINT REFERENCES orders(id), amount NUMERIC(12,2) NOT NULL, status TEXT NOT NULL);
