# Data-Analysis-Project
# Baseball Bats - Predicting Baseball Hall of Famers using Machine Learning

## Overview
Using historical baseball datasets we are analyzing the likelihood of present baseball players votes of entering into the Baseball Hall of Fame. Variables will include player position, awards, world series titles, hits, pitching, etc. The data will then be run through Random Forecasts, Logistic Regression, Gradient Boosting, ADA Boost and potentially SVM to determine the likelihood of entering into the Baseball Hall of Fame. In addition to the standard variables that baseball can actually track, we'll also look into the impact that PED's have on a player. Notably, Barry Bonds, who is argumably the greatest hitter of all time has missed gathering enough votes to enter the Hallf of Fame. We will search elsewhere to gather this information.

## Presentation
Selected Topic: *Current Baseball players chances of entering HOF.*

Reason why they selected their topic: *General interest in base ball and the desire to learn more about the sport.*

Description of their source of data: *We are using a website called [SeanLahman.com](https://www.seanlahman.com/baseball-archive/statistics/) to pull datasets that carry several files from 1871 to 2020 with records on players, teams, etc.*

The main datasets we will be using are 
- People: The list of all 20,000+ baseball players
- Batting: Batting statistics
- Pitching: Pitching statistics
- Fielding: Fielding statistics

We will need to supplement the above data with other key variables like
- AllStarFull: All-star appearances
- AwardsPlayers: Awards won by players
- BattingPost: Batting playoff statistics
- PitchingPost: Pitching playoff statistics
- FieldingPost: Fielding playoff statsitics

Lastly, we will need to find the data associated with PED's.

Questions they hope to answer with the data: 
- Batting statistics over the course of a players career
- Pitching statistics over the course of a players career
- Fielding statistics over the course of a players career
- Variables with the biggest impacts on HOF votes
- For players who we currently do not predict as a "Yes" for the HOF, what is missing?
- Does the team a player plays for have an impact? 
- We want to determine the likelihood of current players making it to the HOF.

## Github
Includes a README: 
  - Description of the communication protocols: Daily check in and frequent video updates.
  - At least one branch for each team member: 
    - JAM
    - PSS   

## Machine Learning Model
- Random Forecasts
- Logistic Regression 
- Gradient Boosting 
- ADA Boost 
- SVM

## Databases
Postgres Database
The ERD can be found [here](https://app.quickdatabasediagrams.com/#/d/RO0Lcv) and the SQL query [here](https://github.com/maldonado91/Data-Analysis-Project/blob/JAM/Resources/QuickDBD-BasebaseDataBankERD.sql)

## Who makes it to the Hall of Fame
All includes (players, managers, executives, etc)
![alt text](https://github.com/maldonado91/Data-Analysis-Project/blob/JAM/Resources/hof_all.PNG)


Only players
![alt text](https://github.com/maldonado91/Data-Analysis-Project/blob/JAM/Resources/hof_players.PNG)
