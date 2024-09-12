create database Obesity_Levels;
use obesity_levels;
-- Q & A --
-- What is the average age of the individuals in the dataset?
select avg(Age) as Average_Age from obesitydataset_raw_and_data_sinthetic;
-- 24.3160
-- How many males and females are present in the dataset?
select Gender, count(*) as Total_Count from obesitydataset_raw_and_data_sinthetic
group by Gender;
-- Female  1043
-- Male    1068
-- What is the average height and weight of the individuals?
select avg(Height) as Average_Height, avg(Weight) as Average_Weight from obesitydataset_raw_and_data_sinthetic;
-- Average_Height    1.7016773533870178         Average_Weight        86.58605812648037
-- How many individuals have fast food consumption as their favorite?
select count(*) Fast_Food_Favorite_Count from obesitydataset_raw_and_data_sinthetic
where FAVC = 'yes';
-- 1866
-- What is the average number of main meals (NCP) per day among the individuals?
select avg(NCP)  Average_Main_Meals_Per_Day from obesitydataset_raw_and_data_sinthetic;
-- 2.6878
-- How many individuals have a family history of overweight?
select count(*)  Family_History_Overweight_Count from obesitydataset_raw_and_data_sinthetic
where family_history_with_overweight = 'yes';
-- 1726
-- What is the average amount of water consumption (CH2O) among the individuals?
select avg(CH2O) Average_Water_Consumption from obesitydataset_raw_and_data_sinthetic;
-- 2.0147
-- What is the most common physical activity level (FAF) among the individuals?
select FAF  Most_Common_Physical_Activity_Level,count(*) Frequency  from obesitydataset_raw_and_data_sinthetic
group by FAF
order by Frequency desc limit 1;
-- Most_Common_Physical_Activity_Level      1            Frequency      776
-- How many individuals belong to each category of obesity (NObeyesdad)?
select NObeyesdad,count(*)  Count from obesitydataset_raw_and_data_sinthetic
group by NObeyesdad;
-- Normal_Weight              287   
-- Overweight_Level_I         290
-- Overweight_Level_II        290
-- Obesity_Type_I             351
-- Insufficient_Weight        272
-- Obesity_Type_II            297
-- Obesity_Type_III           324


