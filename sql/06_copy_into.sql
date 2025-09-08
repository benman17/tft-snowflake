CREATE OR REPLACE TABLE matches (
    gameId STRING,
    gameDuration FLOAT,
    level INT,
    lastRound INT,
    placement INT,       -- 1–8
    comp_score FLOAT,    -- from $6
    champions VARIANT,   -- JSON parsed from $7
    tier STRING          -- Platinum, Diamond, etc.
);
