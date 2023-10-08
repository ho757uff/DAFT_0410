

-- 0)
select * from applestore;

-- 1) What are the different genres?
select distinct prime_genre 
from applestore;

-- 2)  Which is the genre with the most apps rated?
select distinct prime_genre, rating_count_tot
from applestore
order by rating_count_tot;
 
 -- 3)  Which is the genre with most apps?
select count(prime_genre), prime_genre
from applestore
group by prime_genre
order by count(prime_genre) desc
limit 1;

-- 4)  Which is the one with least??
select count(prime_genre), prime_genre
from applestore
group by prime_genre
order by count(prime_genre) asc
limit 1;

-- 5)  Find the top 10 apps most rated.
select track_name, rating_count_tot
from applestore
group by track_name, rating_count_tot
order by rating_count_tot desc
limit 10;

-- 6) Find the top 10 apps best rated by users.
 select track_name, user_rating
 from applestore
 order by user_rating desc
 limit 10;
 
-- 7) Take a look at the data you retrieved in question 5. Give some insights..    
select  track_name, rating_count_tot, user_rating, prime_genre, price
 from applestore
 order by rating_count_tot desc limit 10;
    
-- 8) Take a look at the data you retrieved in question 6. Give some insights.
select track_name, user_rating, rating_count_tot, prime_genre, price
 from applestore
 order by user_rating desc limit 10;
 
-- 9) Now compare the data from questions 5 and 6. What do you see?
-- see .md

-- 10) How could you take the top 3 regarding both user ratings and number of votes?
 select track_name, rating_count_tot, user_rating
 from applestore
 where user_rating = 5	
 limit 3;
 
 -- 11) Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. 
select track_name, price, user_rating, rating_count_tot