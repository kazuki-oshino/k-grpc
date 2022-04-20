CREATE TABLE bakery (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    bake_type int NOT NULL,
    created_at TIMESTAMP NOT NULL,
    INDEX(id)
);
