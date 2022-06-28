CREATE DATABASE stats_canada_languages_2016;

USE stats_canada_languages_2016;

-- Used BigQuery to upload the admitedly small amount of data and ran these queries (results in github csvs):

SELECT
    *
FROM
    `reading-log-354623.data_set.Indigenous languages 1`
WHERE
    Total > 5000
