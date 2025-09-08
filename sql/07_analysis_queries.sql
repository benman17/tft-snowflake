-- Load Platinum
COPY INTO matches
FROM (
    SELECT t.$1, t.$2, t.$3, t.$4, t.$5, t.$6, PARSE_JSON(t.$7), 'Platinum'
    FROM @tft_stage/TFT_Platinum_MatchData.csv t
)
FILE_FORMAT = (FORMAT_NAME = tft_csv_format);

-- Load Diamond
COPY INTO matches
FROM (
    SELECT t.$1, t.$2, t.$3, t.$4, t.$5, t.$6, PARSE_JSON(t.$7), 'Diamond'
    FROM @tft_stage/TFT_Diamond_MatchData.csv t
)
FILE_FORMAT = (FORMAT_NAME = tft_csv_format);

-- Load Master
COPY INTO matches
FROM (
    SELECT t.$1, t.$2, t.$3, t.$4, t.$5, t.$6, PARSE_JSON(t.$7), 'Master'
    FROM @tft_stage/TFT_Master_MatchData.csv t
)
FILE_FORMAT = (FORMAT_NAME = tft_csv_format);

-- Load GrandMaster
COPY INTO matches
FROM (
    SELECT t.$1, t.$2, t.$3, t.$4, t.$5, t.$6, PARSE_JSON(t.$7), 'GrandMaster'
    FROM @tft_stage/TFT_GrandMaster_MatchData.csv t
)
FILE_FORMAT = (FORMAT_NAME = tft_csv_format);

-- Load Challenger
COPY INTO matches
FROM (
    SELECT t.$1, t.$2, t.$3, t.$4, t.$5, t.$6, PARSE_JSON(t.$7), 'Challenger'
    FROM @tft_stage/TFT_Challenger_MatchData.csv t
)
FILE_FORMAT = (FORMAT_NAME = tft_csv_format);
