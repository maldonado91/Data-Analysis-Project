-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/RO0Lcv
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "AllstarFull" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "gameNum" int   NOT NULL,
    "gameID" varchar,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "GP" int   NOT NULL,
    "startingPos" varchar
--     CONSTRAINT "pk_AllstarFull" PRIMARY KEY (
--         "playerID", "yearID", "gameNum"
--      )
);

CREATE TABLE "Batting" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "stint" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar,
    "G" int   NOT NULL,
    "AB" int   NOT NULL,
    "R" int   NOT NULL,
    "H" int   NOT NULL,
    "2B" int   NOT NULL,
    "3B" int   NOT NULL,
    "HR" int   NOT NULL,
    "RBI" int,
    "SB" int,
    "CS" int,
    "BB" int,
    "SO" int,
    "IBB" int,
    "HBP" int,
    "SH" int,
    "SF" int,
    "GIDP" int
--     CONSTRAINT "pk_Batting" PRIMARY KEY (
--         "playerID","yearID","stint"
--      )
);

CREATE TABLE "BattingPost" (
    "yearID" int   NOT NULL,
    "round" varchar   NOT NULL,
    "playerID" varchar   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "G" int   NOT NULL,
    "AB" int   NOT NULL,
    "R" int   NOT NULL,
    "H" int   NOT NULL,
    "2B" int   NOT NULL,
    "3B" int   NOT NULL,
    "HR" int   NOT NULL,
    "RBI" int   NOT NULL,
    "SB" int   NOT NULL,
    "CS" int,
    "BB" int   NOT NULL,
    "SO" int   NOT NULL,
    "IBB" int   NOT NULL,
    "HBP" int,
    "SH" int,
    "SF" int,
    "GIDP" int
--     CONSTRAINT "pk_BattingPost" PRIMARY KEY (
--         "yearID","round","playerID"
--      )
);

CREATE TABLE "Fielding" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "stint" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar,
    "POS" varchar   NOT NULL,
    "G" int   NOT NULL,
    "GS" int,
    "InnOuts" int,
    "PO" int   NOT NULL,
    "A" int   NOT NULL,
    "E" int,
    "DP" int   NOT NULL,
    "PB" int,
    "WP" int,
    "SB" int,
    "CS" int,
    "ZR" int
--     CONSTRAINT "pk_Fielding" PRIMARY KEY (
--         "playerID","yearID","stint","POS"
--      )
);

CREATE TABLE "FieldingPost" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "round" varchar   NOT NULL,
    "POS" varchar   NOT NULL,
    "G" int   NOT NULL,
    "GS" int   NOT NULL,
    "InnOuts" int   NOT NULL,
    "PO" int   NOT NULL,
    "A" int   NOT NULL,
    "E" int   NOT NULL,
    "DP" int   NOT NULL,
    "TP" int   NOT NULL,
    "PB" int,
    "SB" int,
    "CS" int
--     CONSTRAINT "pk_FieldingPost" PRIMARY KEY (
--         "playerID","yearID","round","POS"
--      )
);

CREATE TABLE "People" (
    "playerID" varchar   NOT NULL,
    "birthYear" int,
    "birthMonth" int,
    "birthDay" int,
    "birthCountry" varchar,
    "birthState" varchar,
    "birthCity" varchar,
    "deathYear" int,
    "deathMonth" int,
    "deathDay" int,
    "deathCountry" varchar,
    "deathState" varchar,
    "deathCity" varchar,
    "nameFirst" varchar,
    "nameLast" varchar   NOT NULL,
    "nameGiven" varchar,
    "weight" int,
    "height" int,
    "bats" varchar,
    "throws" varchar,
    "debut" varchar,
    "finalGame" varchar,
    "retroID" varchar,
    "bbrefID" varchar
--     CONSTRAINT "pk_People" PRIMARY KEY (
--         "playerID"
--      )
);

CREATE TABLE "Pitching" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "stint" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar,
    "W" int   NOT NULL,
    "L" int   NOT NULL,
    "G" int   NOT NULL,
    "GS" int   NOT NULL,
    "CG" int   NOT NULL,
    "SHO" int   NOT NULL,
    "SV" int   NOT NULL,
    "IPouts" int   NOT NULL,
    "H" int   NOT NULL,
    "ER" int   NOT NULL,
    "HR" int   NOT NULL,
    "BB" int   NOT NULL,
    "SO" int   NOT NULL,
    "BAOpp" float8,
    "ERA" float8,
    "IBB" float8,
    "WP" float8   NOT NULL,
    "HBP" float8,
    "BK" float8   NOT NULL,
    "BFP" float8,
    "GF" int   NOT NULL,
    "R" int   NOT NULL,
    "SH" float8,
    "SF" float8,
    "GIDP" float8
--     CONSTRAINT "pk_Pitching" PRIMARY KEY (
--         "playerID","yearID","stint"
--      )
);

CREATE TABLE "PitchingPost" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "round" varchar   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "W" int   NOT NULL,
    "L" int   NOT NULL,
    "G" int   NOT NULL,
    "GS" int   NOT NULL,
    "CG" int   NOT NULL,
    "SHO" int   NOT NULL,
    "SV" int   NOT NULL,
    "IPouts" int   NOT NULL,
    "H" int   NOT NULL,
    "ER" int   NOT NULL,
    "HR" int   NOT NULL,
    "BB" int   NOT NULL,
    "SO" int   NOT NULL,
    "BAOpp" float8,
    "ERA" float8,
    "IBB" float8,
    "WP" float8,
    "HBP" float8,
    "BK" float8,
    "BFP" float8,
    "GF" int   NOT NULL,
    "R" int   NOT NULL,
    "SH" float8,
    "SF" float8,
    "GIDP" float8
--     CONSTRAINT "pk_PitchingPost" PRIMARY KEY (
--         "playerID","yearID","round"
--      )
);

CREATE TABLE "AwardsPlayers" (
    "playerID" varchar   NOT NULL,
    "awardID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "lgID" varchar,
    "tie" varchar,
    "notes" varchar
--     CONSTRAINT "pk_AwardsPlayers" PRIMARY KEY (
--         "playerID","awardID","yearID"
--      )
);

CREATE TABLE "HallOfFame" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "votedBy" varchar   NOT NULL,
    "ballots" int,
    "needed" int,
    "votes" int,
    "inducted" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    "needed_note" varchar
--     CONSTRAINT "pk_HallOfFame" PRIMARY KEY (
--         "playerID","yearID","votedBy"
--      )
);

-- ALTER TABLE "AllstarFull" ADD CONSTRAINT "fk_AllstarFull_playerID" FOREIGN KEY("playerID")
-- REFERENCES "People" ("playerID");

-- ALTER TABLE "Batting" ADD CONSTRAINT "fk_Batting_playerID" FOREIGN KEY("playerID")
-- REFERENCES "People" ("playerID");

-- ALTER TABLE "BattingPost" ADD CONSTRAINT "fk_BattingPost_playerID" FOREIGN KEY("playerID")
-- REFERENCES "People" ("playerID");

-- ALTER TABLE "Fielding" ADD CONSTRAINT "fk_Fielding_playerID" FOREIGN KEY("playerID")
-- REFERENCES "People" ("playerID");

-- ALTER TABLE "FieldingPost" ADD CONSTRAINT "fk_FieldingPost_playerID" FOREIGN KEY("playerID")
-- REFERENCES "People" ("playerID");

-- ALTER TABLE "Pitching" ADD CONSTRAINT "fk_Pitching_playerID" FOREIGN KEY("playerID")
-- REFERENCES "People" ("playerID");

-- ALTER TABLE "PitchingPost" ADD CONSTRAINT "fk_PitchingPost_playerID" FOREIGN KEY("playerID")
-- REFERENCES "People" ("playerID");

-- ALTER TABLE "AwardsPlayers" ADD CONSTRAINT "fk_AwardsPlayers_playerID" FOREIGN KEY("playerID")
-- REFERENCES "People" ("playerID");

-- ALTER TABLE "HallOfFame" ADD CONSTRAINT "fk_HallOfFame_playerID" FOREIGN KEY("playerID")
-- REFERENCES "People" ("playerID");

