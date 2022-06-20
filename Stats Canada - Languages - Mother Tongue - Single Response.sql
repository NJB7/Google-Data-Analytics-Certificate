CREATE DATABASE stats_canada_languages_2016;

USE stats_canada_languages_2016;

CREATE TABLE `languages` (
    `language_id` tinyint NOT NULL AUTO_INCREMENT,
    `total_speakers` int DEFAULT NULL,
    `male_speakers ` int DEFAULT NULL,
    `female_speakers ` int DEFAULT NULL,
    `language_family_id` tinyint DEFAULT NULL,
    PRIMARY KEY (`language_id `) KEY `language_family_id ` (`language_family_id `)
) CREATE TABLE `language_family` (
    `language_family_id` int NOT NULL AUTO_INCREMENT,
    `language_family` varchar(1000) DEFAULT NULL,
    PRIMARY KEY (`book_id`),
    KEY (`language_id`) REFERENCES `languages` (`language_family_id`) ON DELETE
    SET
        NULL
