CREATE TABLE `Users`(
    `user_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `favorite_movie_id` INT NULL
);
CREATE TABLE `Movies`(
    `movie_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `film` VARCHAR(50) NOT NULL,
    `genre` VARCHAR(20) NOT NULL,
    `lead_studio` VARCHAR(30) NOT NULL,
    `audience_score` INT NOT NULL,
    `profitability` DECIMAL(8, 2) NOT NULL,
    `rotten_tomatoes` INT NOT NULL,
    `worldwide_gross` VARCHAR(30) NOT NULL,
    `year` INT NOT NULL
);
ALTER TABLE
    `Users` ADD CONSTRAINT `users_favorite_movie_id_foreign` FOREIGN KEY(`favorite_movie_id`) REFERENCES `Movies`(`movie_id`);