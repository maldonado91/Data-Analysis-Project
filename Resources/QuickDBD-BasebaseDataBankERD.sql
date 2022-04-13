-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/RO0Lcv
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "AllstarFull" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "gameNum" int   NOT NULL,
    "gameID" varchar   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "GP" int   NOT NULL,
    "startingPos" varchar   NOT NULL,
    CONSTRAINT "pk_AllstarFull" PRIMARY KEY (
        "playerID","gameID"
     )
);

CREATE TABLE "Batting" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "stint" int   NOT NULL,
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
    "CS" int   NOT NULL,
    "BB" int   NOT NULL,
    "SO" int   NOT NULL,
    "IBB" int   NOT NULL,
    "HBP" int   NOT NULL,
    "SH" int   NOT NULL,
    "SF" int   NOT NULL,
    "GIDP" int   NOT NULL,
    CONSTRAINT "pk_Batting" PRIMARY KEY (
        "playerID","yearID","stint"
     )
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
    "CS" int   NOT NULL,
    "BB" int   NOT NULL,
    "SO" int   NOT NULL,
    "IBB" int   NOT NULL,
    "HBP" int   NOT NULL,
    "SH" int   NOT NULL,
    "SF" int   NOT NULL,
    "GIDP" int   NOT NULL,
    CONSTRAINT "pk_BattingPost" PRIMARY KEY (
        "yearID","round","playerID"
     )
);

CREATE TABLE "Fielding" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "stint" int   NOT NULL,
    "teamID" varchar   NOT NULL,
    "lgID" varchar   NOT NULL,
    "POS" varchar   NOT NULL,
    "G" int   NOT NULL,
    "GS" int   NOT NULL,
    "InnOuts" int   NOT NULL,
    "PO" int   NOT NULL,
    "A" int   NOT NULL,
    "E" int   NOT NULL,
    "DP" int   NOT NULL,
    "PB" int   NOT NULL,
    "WP" int   NOT NULL,
    "SB" int   NOT NULL,
    "CS" int   NOT NULL,
    "ZR" int   NOT NULL,
    CONSTRAINT "pk_Fielding" PRIMARY KEY (
        "playerID","yearID","stint","POS"
     )
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
    "PB" int   NOT NULL,
    "SB" int   NOT NULL,
    "CS" int   NOT NULL,
    CONSTRAINT "pk_FieldingPost" PRIMARY KEY (
        "playerID","yearID","round","POS"
     )
);

CREATE TABLE "People" (
    "playerID" varchar   NOT NULL,
    "birthYear" int   NOT NULL,
    "birthMonth" int   NOT NULL,
    "birthDay" int   NOT NULL,
    "birthCountry" varchar   NOT NULL,
    "birthState" varchar   NOT NULL,
    "birthCity" varchar   NOT NULL,
    "deathYear" int   NOT NULL,
    "deathMonth" int   NOT NULL,
    "deathDay" int   NOT NULL,
    "deathCountry" varchar   NOT NULL,
    "deathState" varchar   NOT NULL,
    "deathCity" varchar   NOT NULL,
    "nameFirst" varchar   NOT NULL,
    "nameLast" varchar   NOT NULL,
    "nameGiven" varchar   NOT NULL,
    "weight" int   NOT NULL,
    "height" int   NOT NULL,
    "bats" varchar   NOT NULL,
    "throws" varchar   NOT NULL,
    "debut" varchar   NOT NULL,
    "finalGame" varchar   NOT NULL,
    "retroID" varchar   NOT NULL,
    "bbrefID" varchar   NOT NULL,
    CONSTRAINT "pk_People" PRIMARY KEY (
        "playerID"
     )
);

CREATE TABLE "Pitching" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "stint" int   NOT NULL,
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
    "BAOpp" int   NOT NULL,
    "ERA" int   NOT NULL,
    "IBB" int   NOT NULL,
    "WP" int   NOT NULL,
    "HBP" int   NOT NULL,
    "BK" int   NOT NULL,
    "BFP" int   NOT NULL,
    "GF" int   NOT NULL,
    "R" int   NOT NULL,
    "SH" int   NOT NULL,
    "SF" int   NOT NULL,
    "GIDP" int   NOT NULL,
    CONSTRAINT "pk_Pitching" PRIMARY KEY (
        "playerID","yearID","stint"
     )
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
    "BAOpp" int   NOT NULL,
    "ERA" int   NOT NULL,
    "IBB" int   NOT NULL,
    "WP" int   NOT NULL,
    "HBP" int   NOT NULL,
    "BK" int   NOT NULL,
    "BFP" int   NOT NULL,
    "GF" int   NOT NULL,
    "R" int   NOT NULL,
    "SH" int   NOT NULL,
    "SF" int   NOT NULL,
    "GIDP" int   NOT NULL,
    CONSTRAINT "pk_PitchingPost" PRIMARY KEY (
        "playerID","yearID","round"
     )
);

CREATE TABLE "AwardsPlayers" (
    "playerID" varchar   NOT NULL,
    "awardID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "lgID" varchar   NOT NULL,
    "tie" varchar   NOT NULL,
    "notes" varchar   NOT NULL,
    CONSTRAINT "pk_AwardsPlayers" PRIMARY KEY (
        "playerID","awardID","yearID"
     )
);

CREATE TABLE "HallOfFame" (
    "playerID" varchar   NOT NULL,
    "yearID" int   NOT NULL,
    "votedBy" varchar   NOT NULL,
    "ballots" int   NOT NULL,
    "needed" int   NOT NULL,
    "votes" int   NOT NULL,
    "inducted" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    "needed_note" varchar   NOT NULL,
    CONSTRAINT "pk_HallOfFame" PRIMARY KEY (
        "playerID","yearID","votedBy"
     )
);

ALTER TABLE "AllstarFull" ADD CONSTRAINT "fk_AllstarFull_playerID" FOREIGN KEY("playerID")
REFERENCES "People" ("playerID");

ALTER TABLE "Batting" ADD CONSTRAINT "fk_Batting_playerID" FOREIGN KEY("playerID")
REFERENCES "People" ("playerID");

ALTER TABLE "BattingPost" ADD CONSTRAINT "fk_BattingPost_playerID" FOREIGN KEY("playerID")
REFERENCES "People" ("playerID");

ALTER TABLE "Fielding" ADD CONSTRAINT "fk_Fielding_playerID" FOREIGN KEY("playerID")
REFERENCES "People" ("playerID");

ALTER TABLE "FieldingPost" ADD CONSTRAINT "fk_FieldingPost_playerID" FOREIGN KEY("playerID")
REFERENCES "People" ("playerID");

ALTER TABLE "Pitching" ADD CONSTRAINT "fk_Pitching_playerID" FOREIGN KEY("playerID")
REFERENCES "People" ("playerID");

ALTER TABLE "PitchingPost" ADD CONSTRAINT "fk_PitchingPost_playerID" FOREIGN KEY("playerID")
REFERENCES "People" ("playerID");

ALTER TABLE "AwardsPlayers" ADD CONSTRAINT "fk_AwardsPlayers_playerID" FOREIGN KEY("playerID")
REFERENCES "People" ("playerID");

ALTER TABLE "HallOfFame" ADD CONSTRAINT "fk_HallOfFame_playerID" FOREIGN KEY("playerID")
REFERENCES "People" ("playerID");

